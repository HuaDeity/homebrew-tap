# homebrew-tap

A Homebrew tap that contains a list of available Formula/Casks for installation. This tap can be used in conjunction with the official Homebrew tap. Additionally, I have maintained some products in the official Homebrew tap.

## Available Formula/Casks

### In this tap

| Name                                                                                    | Description                                      | Installation command                                     | Why not in official tap                                                                                                                                                                       |
| --------------------------------------------------------------------------------------- | ------------------------------------------------ | -------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [EasyConnect](https://www.sangfor.com.cn/product-and-solution/sangfor-security/ssl-vpn) | Secure remote access solution for enterprises    | `brew install --cask HuaDeity/tap/easyconnect`           | [ #141884](https://github.com/Homebrew/homebrew-cask/pull/141884#issuecomment-1445022301) The package file contains an untrusted certificate that is not accepted in the official repository. |
| [Prompt Local Terminal](https://help.panic.com/prompt/prompt-local-terminal/)           | Helper to enable local terminal access in Prompt | `brew install --cask HuaDeity/tap/prompt-local-terminal` | [#169495](https://github.com/Homebrew/homebrew-cask/pull/169495) They refused to accept a cask that is not an application but merely a helper program.                                        |

### In Official tap

| Name                                                                            | Description                                                     | Installation command                      |
| ------------------------------------------------------------------------------- | --------------------------------------------------------------- | ----------------------------------------- |
| [MenubarX](https://menubarx.app/)                                               | Menu bar browser                                                | `brew install --cask menubarx`            |
| [Mail Assistant](https://docs.getdrafts.com/misc/mail-assistant)                | Companion tool for Drafts to allow sending HTML formatted email | `brew install --cask mail-assistant`      |
| [Interact Scratchpad](https://docs.getdrafts.com/docs/misc/interact-scratchpad) | Menu bar utility to create contacts from snippets of text       | `brew install --cask interact-scratchpad` |
| [Readwise_iBooks](https://readwise.io/ibooks)                                   | Import highlights from Apple Books to Readwise                  | `brew install --cask readwise-ibooks`     |
| [Doppler](https://brushedtype.co/doppler/)                                      | Music player for people who buy music                           | `brew install --cask doppler`             |
| [Mumu Player Pro](https://mumu.163.com/mac/)                                    | Android emulator                                                | `brew install --cask mumuplayer`          |
| [Douyin Chat](https://www.douyin.com/downloadpage/chat)                         | Chat client for Douyin                                          | `brew install --cask douyin-chat`         |
| [Screens Assist](https://edovia.com/en/screens-assist/)                         | Share screens link                                              | `brew install --cask screens-assist`      |
| [CleanupBuddy](https://cleanupbuddy.app/)                                       | Clean keyboard and trackpad                                     | `brew install --cask cleanupbuddy`        |
| [OP.GG Desktop](https://op.gg/desktop/)                                         | Game records and champion analysis                              | `brew install --cask opgg`                |
| [iTerm2 AI Plugin](https://iterm2.com/ai-plugin.html)                           | Enable generative AI features in iTerm2                         | `brew install --cask itermai`             |
| [NotchNook](https://lo.cafe/notchnook/)                                         | Handy utility to manage and customize the notch area            | `brew install --cask notchnook`           |
| [Longplay](https://longplay.rocks/)                                             | Rediscover, enjoy and organise your album collection            | `brew install --cask longplay`            |

## Deprecated Formula/Casks

| Name                                                                         | Description                               | Why is deprecated                                                                                                                                                     |
| ---------------------------------------------------------------------------- | ----------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [RunCat Plugins Manager](https://kyome.io/runcat/index.html?lang=en#plugins) | Enable RunCat to show the CPU temperature | [ #159901](https://github.com/Homebrew/homebrew-cask/pull/159901#issuecomment-1806714343) The plugin function has been removed due to a significant update of Runcat. |
| [全球学术快报](https://cajviewer.cnki.net/index.html)(Apple Silicon Version) | Academic application                      | I have no idea why it had been removed from official tap, and I don't use it any more.                                                                                |
