# TimerFlow

一个模仿 `WordFlow` 项目结构写的极简 Flutter 计时器程序。

## 功能

- 点击一次主按钮开始计时
- 再点击一次主按钮停止计时
- 实时显示已经过去的时间

## 目录结构

- `lib/main.dart`：应用入口
- `lib/pages/timer_home_page.dart`：计时主页
- `lib/utils/app_theme.dart`：简化版主题配置

## 本地运行

```bash
flutter pub get
flutter run
```

如果当前终端没有 `flutter` 命令，需要先安装并配置 Flutter SDK。

## GitHub 构建 APK

仓库根目录已经增加 GitHub Actions 工作流：

- `.github/workflows/build-timerflow-apk.yml`

触发方式：

- 手动触发 `Build TimerFlow APK`
- 推送 `TimerFlow/` 相关改动到 `main` 或 `master`
- 推送标签 `timerflow-v1.0.0` 这类版本标签

说明：

- 由于当前项目是手工搭的 Flutter 骨架，CI 会先执行 `flutter create --platforms=android .` 自动补齐 Android 工程
- 构建完成后会在 Actions artifact 中上传 `time-release.apk`
- 如果是 `timerflow-v*.*.*` 标签，还会自动创建 GitHub Release 并附上 APK
