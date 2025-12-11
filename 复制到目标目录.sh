#!/bin/bash

# 吉他弹唱课程文件复制脚本
# 使用方法：bash 复制到目标目录.sh

# 目标目录
TARGET_DIR="/Users/shisyufe/workspace/selftest/Band-Training-Program/lesson/sub_Guitar"

# 当前目录
SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "======================================"
echo "吉他弹唱课程文件复制工具"
echo "======================================"
echo ""
echo "源目录: $SOURCE_DIR"
echo "目标目录: $TARGET_DIR"
echo ""

# 检查目标目录是否存在
if [ ! -d "$TARGET_DIR" ]; then
    echo "❌ 错误：目标目录不存在！"
    echo "请确认路径：$TARGET_DIR"
    exit 1
fi

# 确认复制
echo "将要复制以下文件："
echo ""
echo "📖 核心文档："
echo "  1. README.md"
echo "  2. 课程目录.md"
echo "  3. 快速入门指南.md"
echo "  4. 吉他弹唱16周学习计划.md"
echo ""
echo "🔧 工具文档："
echo "  5. 常用和弦指法图.md"
echo "  6. 节奏型练习指南.md"
echo "  7. 每周练习记录表.md"
echo ""
echo "📅 每周学习文档："
echo "  8. 第01周-认识吉他与基础姿势.md"
echo "  9. 第02周-C大调音阶与简单旋律.md"
echo "  10. 第03周-第一批和弦CAmEm.md"
echo "  11. 第04周-扩展和弦GFDm.md"
echo "  12. 第05-08周-和弦进阶与节奏型.md"
echo "  13. 第09-12周-节奏律动提升.md"
echo "  14. 第13-16周-综合提升与演出.md"
echo ""
echo "共 14 个文件"
echo ""
read -p "确认复制？(y/n): " confirm

if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
    echo "❌ 已取消复制"
    exit 0
fi

# 开始复制
echo ""
echo "开始复制文件..."
echo ""

# 核心文档
echo "📖 复制核心文档..."
cp "$SOURCE_DIR/README.md" "$TARGET_DIR/" && echo "✅ README.md"
cp "$SOURCE_DIR/课程目录.md" "$TARGET_DIR/" && echo "✅ 课程目录.md"
cp "$SOURCE_DIR/快速入门指南.md" "$TARGET_DIR/" && echo "✅ 快速入门指南.md"
cp "$SOURCE_DIR/吉他弹唱16周学习计划.md" "$TARGET_DIR/" && echo "✅ 吉他弹唱16周学习计划.md"

echo ""
echo "🔧 复制工具文档..."
cp "$SOURCE_DIR/常用和弦指法图.md" "$TARGET_DIR/" && echo "✅ 常用和弦指法图.md"
cp "$SOURCE_DIR/节奏型练习指南.md" "$TARGET_DIR/" && echo "✅ 节奏型练习指南.md"
cp "$SOURCE_DIR/每周练习记录表.md" "$TARGET_DIR/" && echo "✅ 每周练习记录表.md"

echo ""
echo "📅 复制每周学习文档..."
cp "$SOURCE_DIR/第01周-认识吉他与基础姿势.md" "$TARGET_DIR/" && echo "✅ 第01周-认识吉他与基础姿势.md"
cp "$SOURCE_DIR/第02周-C大调音阶与简单旋律.md" "$TARGET_DIR/" && echo "✅ 第02周-C大调音阶与简单旋律.md"
cp "$SOURCE_DIR/第03周-第一批和弦CAmEm.md" "$TARGET_DIR/" && echo "✅ 第03周-第一批和弦CAmEm.md"
cp "$SOURCE_DIR/第04周-扩展和弦GFDm.md" "$TARGET_DIR/" && echo "✅ 第04周-扩展和弦GFDm.md"
cp "$SOURCE_DIR/第05-08周-和弦进阶与节奏型.md" "$TARGET_DIR/" && echo "✅ 第05-08周-和弦进阶与节奏型.md"
cp "$SOURCE_DIR/第09-12周-节奏律动提升.md" "$TARGET_DIR/" && echo "✅ 第09-12周-节奏律动提升.md"
cp "$SOURCE_DIR/第13-16周-综合提升与演出.md" "$TARGET_DIR/" && echo "✅ 第13-16周-综合提升与演出.md"

echo ""
echo "======================================"
echo "✅ 所有文件复制完成！"
echo "======================================"
echo ""
echo "文件已复制到："
echo "$TARGET_DIR"
echo ""
echo "现在可以开始学习了！建议先阅读 README.md"
