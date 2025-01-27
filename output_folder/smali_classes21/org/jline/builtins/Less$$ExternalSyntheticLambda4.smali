.class public final synthetic Lorg/jline/builtins/Less$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lorg/jline/keymap/KeyMap;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/keymap/KeyMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/Less$$ExternalSyntheticLambda4;->f$0:Lorg/jline/keymap/KeyMap;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/Less$$ExternalSyntheticLambda4;->f$0:Lorg/jline/keymap/KeyMap;

    invoke-static {v0, p1}, Lorg/jline/builtins/Less;->lambda$bindKeys$3(Lorg/jline/keymap/KeyMap;I)V

    return-void
.end method
