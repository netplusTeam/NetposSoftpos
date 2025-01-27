.class public Lcom/sleepycat/persist/EntityResult;
.super Ljava/lang/Object;
.source "EntityResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final result:Lcom/sleepycat/je/OperationResult;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 24
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/sleepycat/je/OperationResult;)V
    .locals 1
    .param p2, "result"    # Lcom/sleepycat/je/OperationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/sleepycat/je/OperationResult;",
            ")V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lcom/sleepycat/persist/EntityResult;, "Lcom/sleepycat/persist/EntityResult<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-eqz p1, :cond_1

    .line 31
    if-eqz p2, :cond_0

    .line 33
    iput-object p1, p0, Lcom/sleepycat/persist/EntityResult;->value:Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Lcom/sleepycat/persist/EntityResult;->result:Lcom/sleepycat/je/OperationResult;

    .line 35
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public result()Lcom/sleepycat/je/OperationResult;
    .locals 1

    .line 52
    .local p0, "this":Lcom/sleepycat/persist/EntityResult;, "Lcom/sleepycat/persist/EntityResult<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/EntityResult;->result:Lcom/sleepycat/je/OperationResult;

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/sleepycat/persist/EntityResult;, "Lcom/sleepycat/persist/EntityResult<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/EntityResult;->value:Ljava/lang/Object;

    return-object v0
.end method
