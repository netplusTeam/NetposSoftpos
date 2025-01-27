.class Ljavassist/util/HotSwapper$1;
.super Ljava/lang/Thread;
.source "HotSwapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/util/HotSwapper;->startDaemon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavassist/util/HotSwapper;


# direct methods
.method constructor <init>(Ljavassist/util/HotSwapper;)V
    .locals 0
    .param p1, "this$0"    # Ljavassist/util/HotSwapper;

    .line 220
    iput-object p1, p0, Ljavassist/util/HotSwapper$1;->this$0:Ljavassist/util/HotSwapper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private errorMsg(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 222
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Exception in thread \"HotSwap\" "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 223
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 224
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, "events":Lcom/sun/jdi/event/EventSet;
    :try_start_0
    iget-object v1, p0, Ljavassist/util/HotSwapper$1;->this$0:Ljavassist/util/HotSwapper;

    invoke-virtual {v1}, Ljavassist/util/HotSwapper;->waitEvent()Lcom/sun/jdi/event/EventSet;

    move-result-object v1

    move-object v0, v1

    .line 231
    invoke-interface {v0}, Lcom/sun/jdi/event/EventSet;->eventIterator()Lcom/sun/jdi/event/EventIterator;

    move-result-object v1

    .line 232
    .local v1, "iter":Lcom/sun/jdi/event/EventIterator;
    :goto_0
    invoke-interface {v1}, Lcom/sun/jdi/event/EventIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    invoke-interface {v1}, Lcom/sun/jdi/event/EventIterator;->nextEvent()Lcom/sun/jdi/event/Event;

    move-result-object v2

    .line 234
    .local v2, "event":Lcom/sun/jdi/event/Event;
    instance-of v3, v2, Lcom/sun/jdi/event/MethodEntryEvent;

    if-eqz v3, :cond_0

    .line 235
    iget-object v3, p0, Ljavassist/util/HotSwapper$1;->this$0:Ljavassist/util/HotSwapper;

    invoke-virtual {v3}, Ljavassist/util/HotSwapper;->hotswap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    goto :goto_1

    .line 238
    .end local v2    # "event":Lcom/sun/jdi/event/Event;
    :cond_0
    goto :goto_0

    .line 242
    .end local v1    # "iter":Lcom/sun/jdi/event/EventIterator;
    :cond_1
    :goto_1
    goto :goto_2

    .line 240
    :catchall_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Ljavassist/util/HotSwapper$1;->errorMsg(Ljava/lang/Throwable;)V

    .line 244
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    if-eqz v0, :cond_2

    .line 245
    :try_start_1
    invoke-interface {v0}, Lcom/sun/jdi/event/EventSet;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 247
    :catchall_1
    move-exception v1

    .line 248
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Ljavassist/util/HotSwapper$1;->errorMsg(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 249
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_3
    nop

    .line 250
    :goto_4
    return-void
.end method
