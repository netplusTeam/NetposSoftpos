.class public interface abstract Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;
.super Ljava/lang/Object;
.source "PtyChannelConfigurationHolder.java"


# static fields
.field public static final DEFAULT_COLUMNS_COUNT:I = 0x50

.field public static final DEFAULT_HEIGHT:I = 0x1e0

.field public static final DEFAULT_PTY_MODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ROWS_COUNT:I = 0x18

.field public static final DEFAULT_WIDTH:I = 0x280

.field public static final DUMMY_PTY_TYPE:Ljava/lang/String; = "dummy"

.field public static final WINDOWS_PTY_TYPE:Ljava/lang/String; = "windows"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const-class v0, Lorg/apache/sshd/common/channel/PtyMode;

    .line 39
    invoke-static {v0}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;->builder(Ljava/lang/Class;)Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->ISIG:Lorg/apache/sshd/common/channel/PtyMode;

    .line 40
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;->put(Ljava/lang/Enum;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->ICANON:Lorg/apache/sshd/common/channel/PtyMode;

    .line 41
    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;->put(Ljava/lang/Enum;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->ECHO:Lorg/apache/sshd/common/channel/PtyMode;

    .line 42
    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;->put(Ljava/lang/Enum;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->ECHOE:Lorg/apache/sshd/common/channel/PtyMode;

    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;->put(Ljava/lang/Enum;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->ECHOK:Lorg/apache/sshd/common/channel/PtyMode;

    .line 44
    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;->put(Ljava/lang/Enum;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->ECHONL:Lorg/apache/sshd/common/channel/PtyMode;

    .line 45
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;->put(Ljava/lang/Enum;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->NOFLSH:Lorg/apache/sshd/common/channel/PtyMode;

    .line 46
    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;->put(Ljava/lang/Enum;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;->immutable()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;->DEFAULT_PTY_MODES:Ljava/util/Map;

    .line 38
    return-void
.end method


# virtual methods
.method public abstract getPtyColumns()I
.end method

.method public abstract getPtyHeight()I
.end method

.method public abstract getPtyLines()I
.end method

.method public abstract getPtyModes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPtyType()Ljava/lang/String;
.end method

.method public abstract getPtyWidth()I
.end method
