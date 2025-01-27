.class public abstract enum Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
.super Ljava/lang/Enum;
.source "Evictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/Evictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "EvictionSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/evictor/Evictor$EvictionSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

.field public static final enum CACHEMODE:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

.field public static final enum CRITICAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

.field public static final enum DAEMON:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

.field public static final enum EVICTORTHREAD:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

.field public static final enum MANUAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 565
    new-instance v0, Lcom/sleepycat/je/evictor/Evictor$EvictionSource$1;

    const-string v1, "EVICTORTHREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->EVICTORTHREAD:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 573
    new-instance v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource$2;

    const-string v3, "MANUAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->MANUAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 581
    new-instance v3, Lcom/sleepycat/je/evictor/Evictor$EvictionSource$3;

    const-string v5, "CRITICAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CRITICAL:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 589
    new-instance v5, Lcom/sleepycat/je/evictor/Evictor$EvictionSource$4;

    const-string v7, "CACHEMODE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->CACHEMODE:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 597
    new-instance v7, Lcom/sleepycat/je/evictor/Evictor$EvictionSource$5;

    const-string v9, "DAEMON"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->DAEMON:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    .line 563
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->$VALUES:[Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 563
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sleepycat/je/evictor/Evictor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/sleepycat/je/evictor/Evictor$1;

    .line 563
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 563
    const-class v0, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/evictor/Evictor$EvictionSource;
    .locals 1

    .line 563
    sget-object v0, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->$VALUES:[Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    invoke-virtual {v0}, [Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    return-object v0
.end method


# virtual methods
.method abstract getDesc()Ljava/lang/String;
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method public getNumBytesEvictedStatDef()Lcom/sleepycat/je/utilint/StatDefinition;
    .locals 3

    .line 611
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
