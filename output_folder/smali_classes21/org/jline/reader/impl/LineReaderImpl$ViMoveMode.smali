.class public final enum Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;
.super Ljava/lang/Enum;
.source "LineReaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/LineReaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ViMoveMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

.field public static final enum CHANGE:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

.field public static final enum DELETE:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

.field public static final enum NORMAL:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

.field public static final enum YANK:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 140
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->NORMAL:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    .line 141
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    const-string v3, "YANK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->YANK:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    .line 142
    new-instance v3, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    const-string v5, "DELETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->DELETE:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    .line 143
    new-instance v5, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    const-string v7, "CHANGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->CHANGE:Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    .line 139
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->$VALUES:[Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 139
    const-class v0, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    return-object v0
.end method

.method public static values()[Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;
    .locals 1

    .line 139
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->$VALUES:[Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    invoke-virtual {v0}, [Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/reader/impl/LineReaderImpl$ViMoveMode;

    return-object v0
.end method
