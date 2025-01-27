.class public final synthetic Lorg/jline/terminal/impl/PosixSysTerminal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/jline/utils/ShutdownHooks$Task;


# instance fields
.field public final synthetic f$0:Lorg/jline/terminal/impl/PosixSysTerminal;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/terminal/impl/PosixSysTerminal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/terminal/impl/PosixSysTerminal$$ExternalSyntheticLambda1;->f$0:Lorg/jline/terminal/impl/PosixSysTerminal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/jline/terminal/impl/PosixSysTerminal$$ExternalSyntheticLambda1;->f$0:Lorg/jline/terminal/impl/PosixSysTerminal;

    invoke-virtual {v0}, Lorg/jline/terminal/impl/AbstractTerminal;->close()V

    return-void
.end method
