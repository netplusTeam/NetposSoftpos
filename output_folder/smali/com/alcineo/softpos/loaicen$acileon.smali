.class public Lcom/alcineo/softpos/loaicen$acileon;
.super Lcom/google/common/util/concurrent/Service$Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alcineo/softpos/loaicen;->aoleinc(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic acileon:Lcom/alcineo/softpos/loaicen;


# direct methods
.method public constructor <init>(Lcom/alcineo/softpos/loaicen;)V
    .locals 0

    iput-object p1, p0, Lcom/alcineo/softpos/loaicen$acileon;->acileon:Lcom/alcineo/softpos/loaicen;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/Service$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/google/common/util/concurrent/Service$Listener;->failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alcineo/softpos/loaicen;->acileon()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainDispatcher failed.. State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public running()V
    .locals 2

    invoke-super {p0}, Lcom/google/common/util/concurrent/Service$Listener;->running()V

    invoke-static {}, Lcom/alcineo/softpos/loaicen;->acileon()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainDispatcher is now running. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public starting()V
    .locals 2

    invoke-super {p0}, Lcom/google/common/util/concurrent/Service$Listener;->starting()V

    invoke-static {}, Lcom/alcineo/softpos/loaicen;->acileon()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Starting MainDispatcher.. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopping(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/Service$Listener;->stopping(Lcom/google/common/util/concurrent/Service$State;)V

    invoke-static {}, Lcom/alcineo/softpos/loaicen;->acileon()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Stopping MainDispatcher.. "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/Service$Listener;->terminated(Lcom/google/common/util/concurrent/Service$State;)V

    invoke-static {}, Lcom/alcineo/softpos/loaicen;->acileon()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainDispatcher is now terminated. "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
