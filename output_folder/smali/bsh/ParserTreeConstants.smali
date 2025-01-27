.class public interface abstract Lbsh/ParserTreeConstants;
.super Ljava/lang/Object;
.source "ParserTreeConstants.java"


# static fields
.field public static final JJTALLOCATIONEXPRESSION:I = 0x17

.field public static final JJTAMBIGUOUSNAME:I = 0xc

.field public static final JJTARGUMENTS:I = 0x16

.field public static final JJTARRAYDIMENSIONS:I = 0x18

.field public static final JJTARRAYINITIALIZER:I = 0x6

.field public static final JJTASSIGNMENT:I = 0xd

.field public static final JJTBINARYEXPRESSION:I = 0xf

.field public static final JJTBLOCK:I = 0x19

.field public static final JJTCASTEXPRESSION:I = 0x11

.field public static final JJTCLASSDECLARATION:I = 0x1

.field public static final JJTENHANCEDFORSTATEMENT:I = 0x20

.field public static final JJTFORMALCOMMENT:I = 0x1a

.field public static final JJTFORMALPARAMETER:I = 0x8

.field public static final JJTFORMALPARAMETERS:I = 0x7

.field public static final JJTFORSTATEMENT:I = 0x1f

.field public static final JJTIFSTATEMENT:I = 0x1d

.field public static final JJTIMPORTDECLARATION:I = 0x4

.field public static final JJTLITERAL:I = 0x15

.field public static final JJTMETHODDECLARATION:I = 0x2

.field public static final JJTMETHODINVOCATION:I = 0x13

.field public static final JJTPACKAGEDECLARATION:I = 0x3

.field public static final JJTPRIMARYEXPRESSION:I = 0x12

.field public static final JJTPRIMARYSUFFIX:I = 0x14

.field public static final JJTPRIMITIVETYPE:I = 0xb

.field public static final JJTRETURNSTATEMENT:I = 0x23

.field public static final JJTRETURNTYPE:I = 0xa

.field public static final JJTSTATEMENTEXPRESSIONLIST:I = 0x22

.field public static final JJTSWITCHLABEL:I = 0x1c

.field public static final JJTSWITCHSTATEMENT:I = 0x1b

.field public static final JJTTERNARYEXPRESSION:I = 0xe

.field public static final JJTTHROWSTATEMENT:I = 0x24

.field public static final JJTTRYSTATEMENT:I = 0x25

.field public static final JJTTYPE:I = 0x9

.field public static final JJTTYPEDVARIABLEDECLARATION:I = 0x21

.field public static final JJTUNARYEXPRESSION:I = 0x10

.field public static final JJTVARIABLEDECLARATOR:I = 0x5

.field public static final JJTVOID:I = 0x0

.field public static final JJTWHILESTATEMENT:I = 0x1e

.field public static final jjtNodeName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 72
    const-string/jumbo v0, "void"

    const-string v1, "ClassDeclaration"

    const-string v2, "MethodDeclaration"

    const-string v3, "PackageDeclaration"

    const-string v4, "ImportDeclaration"

    const-string v5, "VariableDeclarator"

    const-string v6, "ArrayInitializer"

    const-string v7, "FormalParameters"

    const-string v8, "FormalParameter"

    const-string v9, "Type"

    const-string v10, "ReturnType"

    const-string v11, "PrimitiveType"

    const-string v12, "AmbiguousName"

    const-string v13, "Assignment"

    const-string v14, "TernaryExpression"

    const-string v15, "BinaryExpression"

    const-string v16, "UnaryExpression"

    const-string v17, "CastExpression"

    const-string v18, "PrimaryExpression"

    const-string v19, "MethodInvocation"

    const-string v20, "PrimarySuffix"

    const-string v21, "Literal"

    const-string v22, "Arguments"

    const-string v23, "AllocationExpression"

    const-string v24, "ArrayDimensions"

    const-string v25, "Block"

    const-string v26, "FormalComment"

    const-string v27, "SwitchStatement"

    const-string v28, "SwitchLabel"

    const-string v29, "IfStatement"

    const-string v30, "WhileStatement"

    const-string v31, "ForStatement"

    const-string v32, "EnhancedForStatement"

    const-string v33, "TypedVariableDeclaration"

    const-string v34, "StatementExpressionList"

    const-string v35, "ReturnStatement"

    const-string v36, "ThrowStatement"

    const-string v37, "TryStatement"

    filled-new-array/range {v0 .. v37}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbsh/ParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    return-void
.end method
