.class public Lcom/sleepycat/je/CursorConfig;
.super Ljava/lang/Object;
.source "CursorConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/sleepycat/je/CursorConfig;

.field public static final READ_COMMITTED:Lcom/sleepycat/je/CursorConfig;

.field public static final READ_UNCOMMITTED:Lcom/sleepycat/je/CursorConfig;


# instance fields
.field private nonSticky:Z

.field private readCommitted:Z

.field private readUncommitted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/sleepycat/je/CursorConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/CursorConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    .line 32
    new-instance v0, Lcom/sleepycat/je/CursorConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/CursorConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/CursorConfig;->READ_UNCOMMITTED:Lcom/sleepycat/je/CursorConfig;

    .line 42
    new-instance v1, Lcom/sleepycat/je/CursorConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/CursorConfig;-><init>()V

    sput-object v1, Lcom/sleepycat/je/CursorConfig;->READ_COMMITTED:Lcom/sleepycat/je/CursorConfig;

    .line 45
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/CursorConfig;->setReadUncommitted(Z)Lcom/sleepycat/je/CursorConfig;

    .line 46
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/CursorConfig;->setReadCommitted(Z)Lcom/sleepycat/je/CursorConfig;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/CursorConfig;->readUncommitted:Z

    .line 50
    iput-boolean v0, p0, Lcom/sleepycat/je/CursorConfig;->readCommitted:Z

    .line 51
    iput-boolean v0, p0, Lcom/sleepycat/je/CursorConfig;->nonSticky:Z

    .line 58
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/CursorConfig;
    .locals 2

    .line 232
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/CursorConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
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

    .line 20
    invoke-virtual {p0}, Lcom/sleepycat/je/CursorConfig;->clone()Lcom/sleepycat/je/CursorConfig;

    move-result-object v0

    return-object v0
.end method

.method public getNonSticky()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/sleepycat/je/CursorConfig;->nonSticky:Z

    return v0
.end method

.method public getReadCommitted()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/sleepycat/je/CursorConfig;->readCommitted:Z

    return v0
.end method

.method public getReadUncommitted()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/sleepycat/je/CursorConfig;->readUncommitted:Z

    return v0
.end method

.method public setNonSticky(Z)Lcom/sleepycat/je/CursorConfig;
    .locals 0
    .param p1, "nonSticky"    # Z

    .line 205
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/CursorConfig;->setNonStickyVoid(Z)V

    .line 206
    return-object p0
.end method

.method public setNonStickyVoid(Z)V
    .locals 0
    .param p1, "nonSticky"    # Z

    .line 214
    iput-boolean p1, p0, Lcom/sleepycat/je/CursorConfig;->nonSticky:Z

    .line 215
    return-void
.end method

.method public setReadCommitted(Z)Lcom/sleepycat/je/CursorConfig;
    .locals 0
    .param p1, "readCommitted"    # Z

    .line 112
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/CursorConfig;->setReadCommittedVoid(Z)V

    .line 113
    return-object p0
.end method

.method public setReadCommittedVoid(Z)V
    .locals 0
    .param p1, "readCommitted"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/sleepycat/je/CursorConfig;->readCommitted:Z

    .line 122
    return-void
.end method

.method public setReadUncommitted(Z)Lcom/sleepycat/je/CursorConfig;
    .locals 0
    .param p1, "readUncommitted"    # Z

    .line 72
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/CursorConfig;->setReadUncommittedVoid(Z)V

    .line 73
    return-object p0
.end method

.method public setReadUncommittedVoid(Z)V
    .locals 0
    .param p1, "readUncommitted"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/sleepycat/je/CursorConfig;->readUncommitted:Z

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readUncommitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/CursorConfig;->readUncommitted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nreadCommitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/CursorConfig;->readCommitted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
