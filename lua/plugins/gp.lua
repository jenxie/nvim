return {
  "robitx/gp.nvim",
  enabled = false,
  config = function()
    local conf = {
      cmd = {
        "GpChatNew",
        "GpChatToggle",
        "GpExplain",
        "GpImplement",
        "GpRewrite",
        "GpAppend",
        "GpPrepend",
      },
      default_command_agent = "claude-3-5-sonnet",
      default_chat_agent = "claude-3-5-sonnet",
      openai_api_key = "XXXXXXX",
      providers = {
        openai = {
          disable = true,
        },
        anthropic = {
          endpoint = "https://api.anthropic.com/v1/messages",
          secret = os.getenv("ANTHROPIC_API_KEY"),
        },
      },
      agents = {
        {
          name = "claude-3-5-sonnet",
          chat = true,
          command = true,
          -- https://docs.anthropic.com/en/docs/about-claude/models/all-models
          model = {
            model = "claude-3-5-sonnet-20241022",
            temperature = 0.7,
            top_p = 1,
          },
          system_prompt = "You are Claude 3.5, a helpful AI developer assistant.",
        },
      },
    }
    require("gp").setup(conf)
    -- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
  end,
}
