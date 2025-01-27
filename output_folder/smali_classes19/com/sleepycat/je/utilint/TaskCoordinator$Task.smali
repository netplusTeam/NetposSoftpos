.class public Lcom/sleepycat/je/utilint/TaskCoordinator$Task;
.super Ljava/lang/Object;
.source "TaskCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/TaskCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field private final deficitPermitsGranted:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final expiredPermits:Ljava/util/concurrent/atomic/AtomicInteger;

.field final name:Ljava/lang/String;

.field final permits:I

.field private final realPermitsGranted:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "permits"    # I

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->realPermitsGranted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 747
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->deficitPermitsGranted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 753
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->expiredPermits:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 758
    const-string v0, "name argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 759
    iput-object p1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->name:Ljava/lang/String;

    .line 760
    iput p2, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->permits:I

    .line 761
    return-void
.end method


# virtual methods
.method public clearStats()V
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->deficitPermitsGranted:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 802
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->realPermitsGranted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 803
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 826
    if-ne p0, p1, :cond_0

    .line 827
    const/4 v0, 0x1

    return v0

    .line 829
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 830
    return v0

    .line 832
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 833
    return v0

    .line 835
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;

    .line 836
    .local v0, "other":Lcom/sleepycat/je/utilint/TaskCoordinator$Task;
    iget-object v1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDeficitPermitsGranted()I
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->deficitPermitsGranted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getExpiredPermits()I
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->expiredPermits:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPermits()I
    .locals 1

    .line 768
    iget v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->permits:I

    return v0
.end method

.method public getRealPermitsGranted()I
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->realPermitsGranted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 815
    const/16 v0, 0x1f

    .line 816
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 818
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 819
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public incDeficitPermits()V
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->deficitPermitsGranted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 785
    return-void
.end method

.method public incExpiredPermits()V
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->expiredPermits:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 789
    return-void
.end method

.method public incRealPermits()V
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->realPermitsGranted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 777
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "< Task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", permits:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->permits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Real permits granted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->realPermitsGranted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Deficit permits granted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->deficitPermitsGranted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Expired permits:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->expiredPermits:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
