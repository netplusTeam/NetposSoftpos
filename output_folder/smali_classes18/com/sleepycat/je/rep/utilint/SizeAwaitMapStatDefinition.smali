.class public Lcom/sleepycat/je/rep/utilint/SizeAwaitMapStatDefinition;
.super Ljava/lang/Object;
.source "SizeAwaitMapStatDefinition.java"


# static fields
.field public static final GROUP_DESC:Ljava/lang/String; = "SizeAwaitMap statistics"

.field public static final GROUP_NAME:Ljava/lang/String; = "SizeAwaitMap"

.field public static N_NO_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static N_REAL_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static N_WAIT_TIME:Lcom/sleepycat/je/utilint/StatDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nNoWaits"

    const-string v2, "Number of times the map size requirement was met, and the thread did not need to wait."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMapStatDefinition;->N_NO_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 32
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nRealWaits"

    const-string v2, "Number of times the map size was less than the required size, and the thread had to wait to reach the map size."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMapStatDefinition;->N_REAL_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 38
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nWaitTime"

    const-string v2, "Totla time (in ms) spent waiting for the map to reach the required size."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/SizeAwaitMapStatDefinition;->N_WAIT_TIME:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
