.class public final synthetic Lorg/jline/builtins/Completers$RegexCompleter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/Completers$RegexCompleter;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/Completers$RegexCompleter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/Completers$RegexCompleter$$ExternalSyntheticLambda1;->f$0:Lorg/jline/builtins/Completers$RegexCompleter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/Completers$RegexCompleter$$ExternalSyntheticLambda1;->f$0:Lorg/jline/builtins/Completers$RegexCompleter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lorg/jline/builtins/Completers$RegexCompleter;->$r8$lambda$9x1yeidLl7RKUsd0suohEFO-9O0(Lorg/jline/builtins/Completers$RegexCompleter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
