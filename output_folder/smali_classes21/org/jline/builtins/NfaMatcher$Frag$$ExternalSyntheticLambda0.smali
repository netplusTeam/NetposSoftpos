.class public final synthetic Lorg/jline/builtins/NfaMatcher$Frag$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/NfaMatcher$State;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/NfaMatcher$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/NfaMatcher$Frag$$ExternalSyntheticLambda0;->f$0:Lorg/jline/builtins/NfaMatcher$State;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/NfaMatcher$Frag$$ExternalSyntheticLambda0;->f$0:Lorg/jline/builtins/NfaMatcher$State;

    check-cast p1, Ljava/util/function/Consumer;

    invoke-static {v0, p1}, Lorg/jline/builtins/NfaMatcher$Frag;->lambda$patch$0(Lorg/jline/builtins/NfaMatcher$State;Ljava/util/function/Consumer;)V

    return-void
.end method
