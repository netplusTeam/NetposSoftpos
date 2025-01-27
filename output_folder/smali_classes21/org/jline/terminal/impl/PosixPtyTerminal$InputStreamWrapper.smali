.class Lorg/jline/terminal/impl/PosixPtyTerminal$InputStreamWrapper;
.super Lorg/jline/utils/NonBlockingInputStream;
.source "PosixPtyTerminal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/impl/PosixPtyTerminal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputStreamWrapper"
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final in:Lorg/jline/utils/NonBlockingInputStream;

.field final synthetic this$0:Lorg/jline/terminal/impl/PosixPtyTerminal;


# direct methods
.method protected constructor <init>(Lorg/jline/terminal/impl/PosixPtyTerminal;Lorg/jline/utils/NonBlockingInputStream;)V
    .locals 0
    .param p2, "in"    # Lorg/jline/utils/NonBlockingInputStream;

    .line 151
    iput-object p1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal$InputStreamWrapper;->this$0:Lorg/jline/terminal/impl/PosixPtyTerminal;

    invoke-direct {p0}, Lorg/jline/utils/NonBlockingInputStream;-><init>()V

    .line 149
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/jline/terminal/impl/PosixPtyTerminal$InputStreamWrapper;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 152
    iput-object p2, p0, Lorg/jline/terminal/impl/PosixPtyTerminal$InputStreamWrapper;->in:Lorg/jline/utils/NonBlockingInputStream;

    .line 153
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal$InputStreamWrapper;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    return-void
.end method

.method public read(JZ)I
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "isPeek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal$InputStreamWrapper;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/jline/terminal/impl/PosixPtyTerminal$InputStreamWrapper;->in:Lorg/jline/utils/NonBlockingInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jline/utils/NonBlockingInputStream;->read(JZ)I

    move-result v0

    return v0

    .line 158
    :cond_0
    new-instance v0, Lorg/jline/utils/ClosedException;

    invoke-direct {v0}, Lorg/jline/utils/ClosedException;-><init>()V

    throw v0
.end method
