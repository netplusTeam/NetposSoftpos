.class public Ljavassist/runtime/Cflow;
.super Ljava/lang/ThreadLocal;
.source "Cflow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/runtime/Cflow$Depth;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljavassist/runtime/Cflow$Depth;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 43
    invoke-virtual {p0}, Ljavassist/runtime/Cflow;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/runtime/Cflow$Depth;

    invoke-virtual {v0}, Ljavassist/runtime/Cflow$Depth;->inc()V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 48
    invoke-virtual {p0}, Ljavassist/runtime/Cflow;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/runtime/Cflow$Depth;

    invoke-virtual {v0}, Ljavassist/runtime/Cflow$Depth;->dec()V

    return-void
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-virtual {p0}, Ljavassist/runtime/Cflow;->initialValue()Ljavassist/runtime/Cflow$Depth;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized initialValue()Ljavassist/runtime/Cflow$Depth;
    .locals 1

    monitor-enter p0

    .line 37
    :try_start_0
    new-instance v0, Ljavassist/runtime/Cflow$Depth;

    invoke-direct {v0}, Ljavassist/runtime/Cflow$Depth;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 37
    .end local p0    # "this":Ljavassist/runtime/Cflow;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public value()I
    .locals 1

    .line 53
    invoke-virtual {p0}, Ljavassist/runtime/Cflow;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/runtime/Cflow$Depth;

    invoke-virtual {v0}, Ljavassist/runtime/Cflow$Depth;->value()I

    move-result v0

    return v0
.end method
