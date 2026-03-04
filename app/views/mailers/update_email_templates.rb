# ═══════════════════════════════════════════════════════════════
# Boster Chat — Conversation Email Templates
# Run these commands in your Rails console:
#
#   docker exec -it Chatwoot-RAILS sh -lc \
#     "bundle exec rails console"
#
# Then paste each block below one at a time.
# ═══════════════════════════════════════════════════════════════


# ── 1) Conversation Assignment ───────────────────────────────
t = EmailTemplate.find_or_initialize_by(name: 'conversation_assignment')
t.body = <<~HTML
  <p>Hi {{ user.available_name }},</p>
  <p>A new conversation has been assigned to you on <strong>Boster Chat</strong>.</p>
  <p>
    <strong>Conversation #{{ conversation.display_id }}</strong><br>
    Click below to view and respond:
  </p>
  <p>
    <a href="{{ action_url }}" style="
      display: inline-block;
      background: linear-gradient(135deg, #1D6EF5, #0F2A6E);
      color: #ffffff;
      text-decoration: none;
      padding: 12px 24px;
      border-radius: 8px;
      font-weight: 600;
      font-size: 14px;
    ">View Conversation →</a>
  </p>
  <p style="color:#94a3b8; font-size:13px;">
    You're receiving this because a conversation was assigned to you on Boster Chat.
  </p>
HTML
t.save!
puts "✅ conversation_assignment saved"


# ── 2) Conversation Creation ─────────────────────────────────
t = EmailTemplate.find_or_initialize_by(name: 'conversation_creation')
t.body = <<~HTML
  <p>Hi {{ user.available_name }},</p>
  <p>A new conversation has been created in <strong>{{ inbox.name }}</strong> on Boster Chat.</p>
  <p>
    <strong>Conversation #{{ conversation.display_id }}</strong><br>
    Click below to view it:
  </p>
  <p>
    <a href="{{ action_url }}" style="
      display: inline-block;
      background: linear-gradient(135deg, #1D6EF5, #0F2A6E);
      color: #ffffff;
      text-decoration: none;
      padding: 12px 24px;
      border-radius: 8px;
      font-weight: 600;
      font-size: 14px;
    ">View Conversation →</a>
  </p>
  <p style="color:#94a3b8; font-size:13px;">
    You're receiving this because a new conversation was created in your inbox on Boster Chat.
  </p>
HTML
t.save!
puts "✅ conversation_creation saved"


# ── Verify both saved correctly ──────────────────────────────
EmailTemplate.all.each do |t|
  puts "#{t.name}: #{t.body.length} chars"
end
