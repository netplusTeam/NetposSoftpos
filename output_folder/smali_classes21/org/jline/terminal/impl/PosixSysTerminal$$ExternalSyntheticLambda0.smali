.class public final synthetic Lorg/jline/terminal/impl/PosixSysTerminal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/jline/terminal/impl/PosixSysTerminal;

.field public final synthetic f$1:Lorg/jline/terminal/Terminal$Signal;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/terminal/impl/PosixSysTerminal;Lorg/jline/terminal/Terminal$Signal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/terminal/impl/PosixSysTerminal$$ExternalSyntheticLambda0;->f$0:Lorg/jline/terminal/impl/PosixSysTerminal;

    iput-object p2, p0, Lorg/jline/terminal/impl/PosixSysTerminal$$ExternalSyntheticLambda0;->f$1:Lorg/jline/terminal/Terminal$Signal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/jline/terminal/impl/PosixSysTerminal$$ExternalSyntheticLambda0;->f$0:Lorg/jline/terminal/impl/PosixSysTerminal;

    iget-object v1, p0, Lorg/jline/terminal/impl/PosixSysTerminal$$ExternalSyntheticLambda0;->f$1:Lorg/jline/terminal/Terminal$Signal;

    invoke-virtual {v0, v1}, Lorg/jline/terminal/impl/PosixSysTerminal;->lambda$new$0$org-jline-terminal-impl-PosixSysTerminal(Lorg/jline/terminal/Terminal$Signal;)V

    return-void
.end method
