.class public final enum Lorg/jline/reader/impl/LineReaderImpl$BellType;
.super Ljava/lang/Enum;
.source "LineReaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/LineReaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "BellType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/reader/impl/LineReaderImpl$BellType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/reader/impl/LineReaderImpl$BellType;

.field public static final enum AUDIBLE:Lorg/jline/reader/impl/LineReaderImpl$BellType;

.field public static final enum NONE:Lorg/jline/reader/impl/LineReaderImpl$BellType;

.field public static final enum VISIBLE:Lorg/jline/reader/impl/LineReaderImpl$BellType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 147
    new-instance v0, Lorg/jline/reader/impl/LineReaderImpl$BellType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/reader/impl/LineReaderImpl$BellType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/reader/impl/LineReaderImpl$BellType;->NONE:Lorg/jline/reader/impl/LineReaderImpl$BellType;

    .line 148
    new-instance v1, Lorg/jline/reader/impl/LineReaderImpl$BellType;

    const-string v3, "AUDIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/reader/impl/LineReaderImpl$BellType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/reader/impl/LineReaderImpl$BellType;->AUDIBLE:Lorg/jline/reader/impl/LineReaderImpl$BellType;

    .line 149
    new-instance v3, Lorg/jline/reader/impl/LineReaderImpl$BellType;

    const-string v5, "VISIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/reader/impl/LineReaderImpl$BellType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/reader/impl/LineReaderImpl$BellType;->VISIBLE:Lorg/jline/reader/impl/LineReaderImpl$BellType;

    .line 146
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jline/reader/impl/LineReaderImpl$BellType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jline/reader/impl/LineReaderImpl$BellType;->$VALUES:[Lorg/jline/reader/impl/LineReaderImpl$BellType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/reader/impl/LineReaderImpl$BellType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 146
    const-class v0, Lorg/jline/reader/impl/LineReaderImpl$BellType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/impl/LineReaderImpl$BellType;

    return-object v0
.end method

.method public static values()[Lorg/jline/reader/impl/LineReaderImpl$BellType;
    .locals 1

    .line 146
    sget-object v0, Lorg/jline/reader/impl/LineReaderImpl$BellType;->$VALUES:[Lorg/jline/reader/impl/LineReaderImpl$BellType;

    invoke-virtual {v0}, [Lorg/jline/reader/impl/LineReaderImpl$BellType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/reader/impl/LineReaderImpl$BellType;

    return-object v0
.end method
