.class public final synthetic Lorg/jline/builtins/Less$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/jline/builtins/Less;


# direct methods
.method public synthetic constructor <init>(Lorg/jline/builtins/Less;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jline/builtins/Less$$ExternalSyntheticLambda0;->f$0:Lorg/jline/builtins/Less;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jline/builtins/Less$$ExternalSyntheticLambda0;->f$0:Lorg/jline/builtins/Less;

    check-cast p1, Lorg/jline/utils/AttributedString;

    invoke-virtual {v0, p1}, Lorg/jline/builtins/Less;->lambda$display$2$org-jline-builtins-Less(Lorg/jline/utils/AttributedString;)V

    return-void
.end method
