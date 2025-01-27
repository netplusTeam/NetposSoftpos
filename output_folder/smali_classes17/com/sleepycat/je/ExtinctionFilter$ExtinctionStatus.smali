.class public final enum Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
.super Ljava/lang/Enum;
.source "ExtinctionFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/ExtinctionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtinctionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

.field public static final enum EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

.field public static final enum MAYBE_EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

.field public static final enum NOT_EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 192
    new-instance v0, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    const-string v1, "EXTINCT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    .line 201
    new-instance v1, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    const-string v3, "NOT_EXTINCT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->NOT_EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    .line 210
    new-instance v3, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    const-string v5, "MAYBE_EXTINCT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->MAYBE_EXTINCT:Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    .line 183
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->$VALUES:[Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 183
    const-class v0, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;
    .locals 1

    .line 183
    sget-object v0, Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->$VALUES:[Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    invoke-virtual {v0}, [Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/ExtinctionFilter$ExtinctionStatus;

    return-object v0
.end method
