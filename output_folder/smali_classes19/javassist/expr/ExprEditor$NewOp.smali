.class final Ljavassist/expr/ExprEditor$NewOp;
.super Ljava/lang/Object;
.source "ExprEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/expr/ExprEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NewOp"
.end annotation


# instance fields
.field next:Ljavassist/expr/ExprEditor$NewOp;

.field pos:I

.field type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljavassist/expr/ExprEditor$NewOp;ILjava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljavassist/expr/ExprEditor$NewOp;
    .param p2, "p"    # I
    .param p3, "t"    # Ljava/lang/String;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Ljavassist/expr/ExprEditor$NewOp;->next:Ljavassist/expr/ExprEditor$NewOp;

    .line 156
    iput p2, p0, Ljavassist/expr/ExprEditor$NewOp;->pos:I

    .line 157
    iput-object p3, p0, Ljavassist/expr/ExprEditor$NewOp;->type:Ljava/lang/String;

    .line 158
    return-void
.end method
