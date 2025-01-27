.class public final synthetic Lorg/jline/builtins/ScreenTerminal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/ScreenTerminal;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/ScreenTerminal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/ScreenTerminal$$ExternalSyntheticLambda0;->f$0:Lorg/jline/builtins/ScreenTerminal;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/ScreenTerminal$$ExternalSyntheticLambda0;->f$0:Lorg/jline/builtins/ScreenTerminal;

    invoke-virtual {v0, p1}, Lorg/jline/builtins/ScreenTerminal;->lambda$write$0$org-jline-builtins-ScreenTerminal(I)V

    return-void
.end method
