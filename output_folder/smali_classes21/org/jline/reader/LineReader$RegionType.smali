.class public final enum Lorg/jline/reader/LineReader$RegionType;
.super Ljava/lang/Enum;
.source "LineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/LineReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RegionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/reader/LineReader$RegionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/reader/LineReader$RegionType;

.field public static final enum CHAR:Lorg/jline/reader/LineReader$RegionType;

.field public static final enum LINE:Lorg/jline/reader/LineReader$RegionType;

.field public static final enum NONE:Lorg/jline/reader/LineReader$RegionType;

.field public static final enum PASTE:Lorg/jline/reader/LineReader$RegionType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 491
    new-instance v0, Lorg/jline/reader/LineReader$RegionType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/reader/LineReader$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/reader/LineReader$RegionType;->NONE:Lorg/jline/reader/LineReader$RegionType;

    .line 492
    new-instance v1, Lorg/jline/reader/LineReader$RegionType;

    const-string v3, "CHAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/reader/LineReader$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/reader/LineReader$RegionType;->CHAR:Lorg/jline/reader/LineReader$RegionType;

    .line 493
    new-instance v3, Lorg/jline/reader/LineReader$RegionType;

    const-string v5, "LINE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/reader/LineReader$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/reader/LineReader$RegionType;->LINE:Lorg/jline/reader/LineReader$RegionType;

    .line 494
    new-instance v5, Lorg/jline/reader/LineReader$RegionType;

    const-string v7, "PASTE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/reader/LineReader$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/reader/LineReader$RegionType;->PASTE:Lorg/jline/reader/LineReader$RegionType;

    .line 490
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jline/reader/LineReader$RegionType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/jline/reader/LineReader$RegionType;->$VALUES:[Lorg/jline/reader/LineReader$RegionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 490
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/reader/LineReader$RegionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 490
    const-class v0, Lorg/jline/reader/LineReader$RegionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/reader/LineReader$RegionType;

    return-object v0
.end method

.method public static values()[Lorg/jline/reader/LineReader$RegionType;
    .locals 1

    .line 490
    sget-object v0, Lorg/jline/reader/LineReader$RegionType;->$VALUES:[Lorg/jline/reader/LineReader$RegionType;

    invoke-virtual {v0}, [Lorg/jline/reader/LineReader$RegionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/reader/LineReader$RegionType;

    return-object v0
.end method
