.class public final synthetic Lorg/jline/terminal/TerminalBuilder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/jline/terminal/impl/AbstractTerminal;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/terminal/impl/AbstractTerminal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/terminal/TerminalBuilder$$ExternalSyntheticLambda3;->f$0:Lorg/jline/terminal/impl/AbstractTerminal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/jline/terminal/TerminalBuilder$$ExternalSyntheticLambda3;->f$0:Lorg/jline/terminal/impl/AbstractTerminal;

    invoke-static {v0}, Lorg/jline/terminal/TerminalBuilder;->lambda$doBuild$3(Lorg/jline/terminal/impl/AbstractTerminal;)V

    return-void
.end method
