.class public Lcom/sleepycat/compat/DbCompat$OpResult;
.super Ljava/lang/Object;
.source "DbCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/compat/DbCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpResult"
.end annotation


# static fields
.field public static final FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

.field public static final SUCCESS:Lcom/sleepycat/compat/DbCompat$OpResult;


# instance fields
.field public final jeResult:Lcom/sleepycat/je/OperationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 626
    new-instance v0, Lcom/sleepycat/compat/DbCompat$OpResult;

    sget-object v1, Lcom/sleepycat/je/DbInternal;->DEFAULT_RESULT:Lcom/sleepycat/je/OperationResult;

    invoke-direct {v0, v1}, Lcom/sleepycat/compat/DbCompat$OpResult;-><init>(Lcom/sleepycat/je/OperationResult;)V

    sput-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->SUCCESS:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 629
    new-instance v0, Lcom/sleepycat/compat/DbCompat$OpResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/compat/DbCompat$OpResult;-><init>(Lcom/sleepycat/je/OperationResult;)V

    sput-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/je/OperationResult;)V
    .locals 0
    .param p1, "result"    # Lcom/sleepycat/je/OperationResult;

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput-object p1, p0, Lcom/sleepycat/compat/DbCompat$OpResult;->jeResult:Lcom/sleepycat/je/OperationResult;

    .line 635
    return-void
.end method

.method public static make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 1
    .param p0, "result"    # Lcom/sleepycat/je/OperationResult;

    .line 647
    if-eqz p0, :cond_0

    new-instance v0, Lcom/sleepycat/compat/DbCompat$OpResult;

    invoke-direct {v0, p0}, Lcom/sleepycat/compat/DbCompat$OpResult;-><init>(Lcom/sleepycat/je/OperationResult;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    :goto_0
    return-object v0
.end method

.method public static make(Lcom/sleepycat/je/OperationStatus;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 1
    .param p0, "status"    # Lcom/sleepycat/je/OperationStatus;

    .line 651
    sget-object v0, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->SUCCESS:Lcom/sleepycat/compat/DbCompat$OpResult;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/sleepycat/compat/DbCompat$OpResult;->jeResult:Lcom/sleepycat/je/OperationResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public status()Lcom/sleepycat/je/OperationStatus;
    .locals 1

    .line 642
    invoke-virtual {p0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sleepycat/je/OperationStatus;->NOTFOUND:Lcom/sleepycat/je/OperationStatus;

    :goto_0
    return-object v0
.end method
