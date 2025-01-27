.class public final synthetic Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/NfaMatcher;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/NfaMatcher;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda8;->f$0:Lorg/jline/builtins/NfaMatcher;

    iput-object p2, p0, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda8;->f$0:Lorg/jline/builtins/NfaMatcher;

    iget-object v1, p0, Lorg/jline/builtins/NfaMatcher$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast p1, Lorg/jline/builtins/NfaMatcher$State;

    invoke-virtual {v0, v1, p1}, Lorg/jline/builtins/NfaMatcher;->lambda$matchPartial$5$org-jline-builtins-NfaMatcher(Ljava/lang/Object;Lorg/jline/builtins/NfaMatcher$State;)Z

    move-result p1

    return p1
.end method
