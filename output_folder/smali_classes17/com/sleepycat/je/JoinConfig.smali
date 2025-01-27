.class public Lcom/sleepycat/je/JoinConfig;
.super Ljava/lang/Object;
.source "JoinConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/sleepycat/je/JoinConfig;


# instance fields
.field private noSort:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/sleepycat/je/JoinConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/JoinConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/JoinConfig;->DEFAULT:Lcom/sleepycat/je/JoinConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/JoinConfig;
    .locals 2

    .line 110
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/JoinConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "willNeverOccur":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/sleepycat/je/JoinConfig;->clone()Lcom/sleepycat/je/JoinConfig;

    move-result-object v0

    return-object v0
.end method

.method public getNoSort()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/sleepycat/je/JoinConfig;->noSort:Z

    return v0
.end method

.method public setNoSort(Z)Lcom/sleepycat/je/JoinConfig;
    .locals 0
    .param p1, "noSort"    # Z

    .line 81
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/JoinConfig;->setNoSortVoid(Z)V

    .line 82
    return-object p0
.end method

.method public setNoSortVoid(Z)V
    .locals 0
    .param p1, "noSort"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/sleepycat/je/JoinConfig;->noSort:Z

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noSort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/JoinConfig;->noSort:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
