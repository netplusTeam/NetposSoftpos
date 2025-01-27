.class Lbsh/ReturnControl;
.super Ljava/lang/Object;
.source "ReturnControl.java"

# interfaces
.implements Lbsh/ParserConstants;


# instance fields
.field public kind:I

.field public returnPoint:Lbsh/SimpleNode;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Lbsh/SimpleNode;)V
    .locals 0
    .param p1, "kind"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "returnPoint"    # Lbsh/SimpleNode;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lbsh/ReturnControl;->kind:I

    .line 42
    iput-object p2, p0, Lbsh/ReturnControl;->value:Ljava/lang/Object;

    .line 43
    iput-object p3, p0, Lbsh/ReturnControl;->returnPoint:Lbsh/SimpleNode;

    .line 44
    return-void
.end method
