.class public final enum Lcom/sleepycat/je/rep/SyncupProgress;
.super Ljava/lang/Enum;
.source "SyncupProgress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/SyncupProgress;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/SyncupProgress;

.field public static final enum CHECK_FOR_ROLLBACK:Lcom/sleepycat/je/rep/SyncupProgress;

.field public static final enum DO_ROLLBACK:Lcom/sleepycat/je/rep/SyncupProgress;

.field public static final enum END:Lcom/sleepycat/je/rep/SyncupProgress;

.field public static final enum FIND_MATCHPOINT:Lcom/sleepycat/je/rep/SyncupProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 32
    new-instance v0, Lcom/sleepycat/je/rep/SyncupProgress;

    const-string v1, "FIND_MATCHPOINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/SyncupProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/SyncupProgress;->FIND_MATCHPOINT:Lcom/sleepycat/je/rep/SyncupProgress;

    .line 39
    new-instance v1, Lcom/sleepycat/je/rep/SyncupProgress;

    const-string v3, "CHECK_FOR_ROLLBACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/SyncupProgress;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/SyncupProgress;->CHECK_FOR_ROLLBACK:Lcom/sleepycat/je/rep/SyncupProgress;

    .line 45
    new-instance v3, Lcom/sleepycat/je/rep/SyncupProgress;

    const-string v5, "DO_ROLLBACK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/rep/SyncupProgress;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/rep/SyncupProgress;->DO_ROLLBACK:Lcom/sleepycat/je/rep/SyncupProgress;

    .line 48
    new-instance v5, Lcom/sleepycat/je/rep/SyncupProgress;

    const-string v7, "END"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/rep/SyncupProgress;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/rep/SyncupProgress;->END:Lcom/sleepycat/je/rep/SyncupProgress;

    .line 26
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sleepycat/je/rep/SyncupProgress;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sleepycat/je/rep/SyncupProgress;->$VALUES:[Lcom/sleepycat/je/rep/SyncupProgress;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/SyncupProgress;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/sleepycat/je/rep/SyncupProgress;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/SyncupProgress;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/SyncupProgress;
    .locals 1

    .line 26
    sget-object v0, Lcom/sleepycat/je/rep/SyncupProgress;->$VALUES:[Lcom/sleepycat/je/rep/SyncupProgress;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/SyncupProgress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/SyncupProgress;

    return-object v0
.end method
