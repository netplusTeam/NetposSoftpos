.class final enum Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;
.super Ljava/lang/Enum;
.source "ArbiterAcker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RequestExitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

.field public static final enum IMMEDIATE:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

.field public static final enum SOFT:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 109
    new-instance v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    .line 110
    new-instance v1, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    const-string v3, "SOFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->SOFT:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    .line 108
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->$VALUES:[Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 108
    const-class v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;
    .locals 1

    .line 108
    sget-object v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->$VALUES:[Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RequestExitType;

    return-object v0
.end method
