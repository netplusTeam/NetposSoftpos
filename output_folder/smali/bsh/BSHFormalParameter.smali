.class Lbsh/BSHFormalParameter;
.super Lbsh/SimpleNode;
.source "BSHFormalParameter.java"


# static fields
.field public static final UNTYPED:Ljava/lang/Class;


# instance fields
.field public name:Ljava/lang/String;

.field public type:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lbsh/BSHFormalParameter;->UNTYPED:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 41
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 1
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lbsh/BSHFormalParameter;->jjtGetNumChildren()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHFormalParameter;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHType;

    invoke-virtual {v0, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    goto :goto_0

    .line 63
    :cond_0
    sget-object v0, Lbsh/BSHFormalParameter;->UNTYPED:Ljava/lang/Class;

    iput-object v0, p0, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    .line 65
    :goto_0
    iget-object v0, p0, Lbsh/BSHFormalParameter;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .param p3, "defaultPackage"    # Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lbsh/BSHFormalParameter;->jjtGetNumChildren()I

    move-result v0

    if-lez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/BSHFormalParameter;->jjtGetChild(I)Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/BSHType;

    invoke-virtual {v0, p1, p2, p3}, Lbsh/BSHType;->getTypeDescriptor(Lbsh/CallStack;Lbsh/Interpreter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    const-string v0, "Ljava/lang/Object;"

    return-object v0
.end method
