.class public final synthetic Lorg/jline/builtins/Nano$PatternHistory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/Nano$PatternHistory;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/Nano$PatternHistory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/Nano$PatternHistory$$ExternalSyntheticLambda0;->f$0:Lorg/jline/builtins/Nano$PatternHistory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/Nano$PatternHistory$$ExternalSyntheticLambda0;->f$0:Lorg/jline/builtins/Nano$PatternHistory;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/jline/builtins/Nano$PatternHistory;->lambda$load$0$org-jline-builtins-Nano$PatternHistory(Ljava/lang/String;)V

    return-void
.end method
