.class public final Ljavassist/compiler/Parser;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Ljavassist/compiler/TokenId;


# static fields
.field private static final binaryOpPrecedence:[I


# instance fields
.field private lex:Ljavassist/compiler/Lex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 837
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/compiler/Parser;->binaryOpPrecedence:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x6
        0x0
        0x0
        0x0
        0x1
        0x2
        0x0
        0x2
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x0
        0x4
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljavassist/compiler/Lex;)V
    .locals 0
    .param p1, "lex"    # Ljavassist/compiler/Lex;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    .line 48
    return-void
.end method

.method private binaryExpr2(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTree;I)Ljavassist/compiler/ast/ASTree;
    .locals 5
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .param p2, "expr"    # Ljavassist/compiler/ast/ASTree;
    .param p3, "prec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 821
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 822
    .local v0, "t":I
    const/16 v1, 0x143

    if-ne v0, v1, :cond_0

    .line 823
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/Parser;->parseInstanceOf(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    return-object v1

    .line 825
    :cond_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseUnaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 827
    .local v1, "expr2":Ljavassist/compiler/ast/ASTree;
    :goto_0
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v2

    .line 828
    .local v2, "t2":I
    invoke-direct {p0, v2}, Ljavassist/compiler/Parser;->getOpPrecedence(I)I

    move-result v3

    .line 829
    .local v3, "p2":I
    if-eqz v3, :cond_1

    if-le p3, v3, :cond_1

    .line 830
    invoke-direct {p0, p1, v1, v3}, Ljavassist/compiler/Parser;->binaryExpr2(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTree;I)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 833
    .end local v2    # "t2":I
    .end local v3    # "p2":I
    goto :goto_0

    .line 832
    .restart local v2    # "t2":I
    .restart local v3    # "p2":I
    :cond_1
    invoke-static {v0, p2, v1}, Ljavassist/compiler/ast/BinExpr;->makeBin(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/BinExpr;

    move-result-object v4

    return-object v4
.end method

.method private getOpPrecedence(I)I
    .locals 2
    .param p1, "c"    # I

    .line 844
    const/16 v0, 0x21

    if-gt v0, p1, :cond_0

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_0

    .line 845
    sget-object v0, Ljavassist/compiler/Parser;->binaryOpPrecedence:[I

    add-int/lit8 v1, p1, -0x21

    aget v0, v0, v1

    return v0

    .line 846
    :cond_0
    const/16 v0, 0x5e

    if-ne p1, v0, :cond_1

    .line 847
    const/4 v0, 0x7

    return v0

    .line 848
    :cond_1
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_2

    .line 849
    const/16 v0, 0x8

    return v0

    .line 850
    :cond_2
    const/16 v0, 0x171

    if-ne p1, v0, :cond_3

    .line 851
    const/16 v0, 0x9

    return v0

    .line 852
    :cond_3
    const/16 v0, 0x170

    if-ne p1, v0, :cond_4

    .line 853
    const/16 v0, 0xa

    return v0

    .line 854
    :cond_4
    const/16 v0, 0x166

    if-eq p1, v0, :cond_a

    const/16 v0, 0x15e

    if-ne p1, v0, :cond_5

    goto :goto_2

    .line 856
    :cond_5
    const/16 v0, 0x165

    if-eq p1, v0, :cond_9

    const/16 v0, 0x167

    if-eq p1, v0, :cond_9

    const/16 v0, 0x143

    if-ne p1, v0, :cond_6

    goto :goto_1

    .line 858
    :cond_6
    const/16 v0, 0x16c

    if-eq p1, v0, :cond_8

    const/16 v0, 0x16e

    if-eq p1, v0, :cond_8

    const/16 v0, 0x172

    if-ne p1, v0, :cond_7

    goto :goto_0

    .line 861
    :cond_7
    const/4 v0, 0x0

    return v0

    .line 859
    :cond_8
    :goto_0
    const/4 v0, 0x3

    return v0

    .line 857
    :cond_9
    :goto_1
    const/4 v0, 0x4

    return v0

    .line 855
    :cond_a
    :goto_2
    const/4 v0, 0x5

    return v0
.end method

.method private static isAssignOp(I)Z
    .locals 1
    .param p0, "t"    # I

    .line 729
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x160

    if-eq p0, v0, :cond_1

    const/16 v0, 0x161

    if-eq p0, v0, :cond_1

    const/16 v0, 0x162

    if-eq p0, v0, :cond_1

    const/16 v0, 0x163

    if-eq p0, v0, :cond_1

    const/16 v0, 0x164

    if-eq p0, v0, :cond_1

    const/16 v0, 0x168

    if-eq p0, v0, :cond_1

    const/16 v0, 0x169

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x173

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isBuiltinType(I)Z
    .locals 1
    .param p0, "t"    # I

    .line 217
    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x132

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x144

    if-eq p0, v0, :cond_1

    const/16 v0, 0x146

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x138

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private nextIsBuiltinCast()Z
    .locals 5

    .line 943
    const/4 v0, 0x2

    .line 944
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    invoke-virtual {v1, v0}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    move v1, v0

    .local v1, "t":I
    const/16 v3, 0x5b

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    .line 945
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {v0, v2}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_0

    .line 946
    return v4

    .line 945
    :cond_0
    move v0, v3

    goto :goto_0

    .line 948
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    const/16 v3, 0x29

    if-ne v0, v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method private nextIsClassCast()Z
    .locals 6

    .line 952
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljavassist/compiler/Parser;->nextIsClassType(I)I

    move-result v1

    .line 953
    .local v1, "i":I
    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 954
    return v2

    .line 956
    :cond_0
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3, v1}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v3

    .line 957
    .local v3, "t":I
    const/16 v4, 0x29

    if-eq v3, v4, :cond_1

    .line 958
    return v2

    .line 960
    :cond_1
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v3

    .line 961
    const/16 v4, 0x28

    if-eq v3, v4, :cond_3

    const/16 v4, 0x19c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x196

    if-eq v3, v4, :cond_3

    const/16 v4, 0x190

    if-eq v3, v4, :cond_3

    const/16 v4, 0x153

    if-eq v3, v4, :cond_3

    const/16 v4, 0x150

    if-eq v3, v4, :cond_3

    const/16 v4, 0x148

    if-eq v3, v4, :cond_3

    const/16 v4, 0x19a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x19b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x193

    if-eq v3, v4, :cond_3

    const/16 v4, 0x192

    if-eq v3, v4, :cond_3

    const/16 v4, 0x191

    if-eq v3, v4, :cond_3

    const/16 v4, 0x195

    if-eq v3, v4, :cond_3

    const/16 v4, 0x194

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0
.end method

.method private nextIsClassType(I)I
    .locals 4
    .param p1, "i"    # I

    .line 971
    :cond_0
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    const/16 v1, 0x2e

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    .line 972
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_0

    .line 973
    return v2

    .line 975
    :cond_1
    :goto_0
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "i":I
    .local v1, "i":I
    invoke-virtual {v0, p1}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result p1

    move v0, p1

    .local v0, "t":I
    const/16 v3, 0x5b

    if-ne p1, v3, :cond_3

    .line 976
    iget-object p1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-virtual {p1, v1}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result p1

    const/16 v1, 0x5d

    if-eq p1, v1, :cond_2

    .line 977
    return v2

    .line 976
    :cond_2
    move p1, v3

    goto :goto_0

    .line 979
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 p1, v1, -0x1

    return p1
.end method

.method private parseArgumentList(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;
    .locals 4
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1338
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    .line 1341
    const/4 v0, 0x0

    .line 1342
    .local v0, "list":Ljavassist/compiler/ast/ASTList;
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_0

    .line 1344
    :goto_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/compiler/ast/ASTList;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 1345
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_0

    .line 1346
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    goto :goto_0

    .line 1351
    :cond_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1354
    return-object v0

    .line 1352
    :cond_1
    new-instance v1, Ljavassist/compiler/CompileError;

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v3, ") is missing"

    invoke-direct {v1, v3, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v1

    .line 1339
    .end local v0    # "list":Ljavassist/compiler/ast/ASTList;
    :cond_2
    new-instance v0, Ljavassist/compiler/CompileError;

    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v2, "( is missing"

    invoke-direct {v0, v2, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v0
.end method

.method private parseArrayDimension()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, "arrayDim":I
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    .line 987
    add-int/lit8 v0, v0, 0x1

    .line 988
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 989
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 990
    :cond_0
    new-instance v1, Ljavassist/compiler/CompileError;

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v3, "] is missing"

    invoke-direct {v1, v3, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v1

    .line 993
    :cond_1
    return v0
.end method

.method private parseArrayIndex(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 4
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1323
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    .line 1324
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    .line 1325
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    .line 1326
    const/4 v0, 0x0

    return-object v0

    .line 1328
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 1329
    .local v0, "index":Ljavassist/compiler/ast/ASTree;
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1332
    return-object v0

    .line 1330
    :cond_1
    new-instance v1, Ljavassist/compiler/CompileError;

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v3, "] is missing"

    invoke-direct {v1, v3, v2}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v1
.end method

.method private parseArrayInitializer(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ArrayInit;
    .locals 5
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 683
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    .line 684
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_0

    .line 685
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    .line 686
    new-instance v0, Ljavassist/compiler/ast/ArrayInit;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavassist/compiler/ast/ArrayInit;-><init>(Ljavassist/compiler/ast/ASTree;)V

    return-object v0

    .line 688
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 689
    .local v0, "expr":Ljavassist/compiler/ast/ASTree;
    new-instance v2, Ljavassist/compiler/ast/ArrayInit;

    invoke-direct {v2, v0}, Ljavassist/compiler/ast/ArrayInit;-><init>(Ljavassist/compiler/ast/ASTree;)V

    .line 690
    .local v2, "init":Ljavassist/compiler/ast/ArrayInit;
    :goto_0
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1

    .line 691
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    .line 692
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 693
    invoke-static {v2, v0}, Ljavassist/compiler/ast/ASTList;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    goto :goto_0

    .line 696
    :cond_1
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 699
    return-object v2

    .line 697
    :cond_2
    new-instance v1, Ljavassist/compiler/SyntaxError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v1, v3}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v1
.end method

.method private parseArraySize(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;
    .locals 3
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1313
    const/4 v0, 0x0

    .line 1314
    .local v0, "list":Ljavassist/compiler/ast/ASTList;
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 1315
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArrayIndex(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/compiler/ast/ASTList;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    goto :goto_0

    .line 1317
    :cond_0
    return-object v0
.end method

.method private parseBinaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 3
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 794
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseUnaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 796
    .local v0, "expr":Ljavassist/compiler/ast/ASTree;
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    .line 797
    .local v1, "t":I
    invoke-direct {p0, v1}, Ljavassist/compiler/Parser;->getOpPrecedence(I)I

    move-result v2

    .line 798
    .local v2, "p":I
    if-nez v2, :cond_0

    .line 799
    return-object v0

    .line 800
    :cond_0
    invoke-direct {p0, p1, v0, v2}, Ljavassist/compiler/Parser;->binaryExpr2(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTree;I)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 801
    .end local v1    # "t":I
    .end local v2    # "p":I
    goto :goto_0
.end method

.method private parseBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 5
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_3

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "body":Ljavassist/compiler/ast/Stmnt;
    new-instance v1, Ljavassist/compiler/SymbolTable;

    invoke-direct {v1, p1}, Ljavassist/compiler/SymbolTable;-><init>(Ljavassist/compiler/SymbolTable;)V

    .line 306
    .local v1, "tbl2":Ljavassist/compiler/SymbolTable;
    :goto_0
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v2

    const/16 v3, 0x7d

    const/16 v4, 0x42

    if-eq v2, v3, :cond_1

    .line 307
    invoke-virtual {p0, v1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v2

    .line 308
    .local v2, "s":Ljavassist/compiler/ast/Stmnt;
    if-eqz v2, :cond_0

    .line 309
    new-instance v3, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v3, v4, v2}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    invoke-static {v0, v3}, Ljavassist/compiler/ast/ASTList;->concat(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljavassist/compiler/ast/Stmnt;

    .line 310
    .end local v2    # "s":Ljavassist/compiler/ast/Stmnt;
    :cond_0
    goto :goto_0

    .line 312
    :cond_1
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    .line 313
    if-nez v0, :cond_2

    .line 314
    new-instance v2, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v2, v4}, Ljavassist/compiler/ast/Stmnt;-><init>(I)V

    return-object v2

    .line 315
    :cond_2
    return-object v0

    .line 302
    .end local v0    # "body":Ljavassist/compiler/ast/Stmnt;
    .end local v1    # "tbl2":Ljavassist/compiler/SymbolTable;
    :cond_3
    new-instance v0, Ljavassist/compiler/SyntaxError;

    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v0, v1}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v0
.end method

.method private parseBreak(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 1
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 548
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseContinue(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v0

    return-object v0
.end method

.method private parseCast(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 6
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 917
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v0

    .line 918
    .local v0, "t":I
    invoke-static {v0}, Ljavassist/compiler/Parser;->isBuiltinType(I)Z

    move-result v1

    const-string v2, ") is missing"

    const/16 v3, 0x29

    if-eqz v1, :cond_1

    invoke-direct {p0}, Ljavassist/compiler/Parser;->nextIsBuiltinCast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 919
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 920
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 921
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v1

    .line 922
    .local v1, "dim":I
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->get()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 925
    new-instance v2, Ljavassist/compiler/ast/CastExpr;

    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseUnaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Ljavassist/compiler/ast/CastExpr;-><init>(IILjavassist/compiler/ast/ASTree;)V

    return-object v2

    .line 923
    :cond_0
    new-instance v3, Ljavassist/compiler/CompileError;

    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v3, v2, v4}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v3

    .line 927
    .end local v1    # "dim":I
    :cond_1
    const/16 v1, 0x190

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Ljavassist/compiler/Parser;->nextIsClassCast()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 928
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 929
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseClassType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    .line 930
    .local v1, "name":Ljavassist/compiler/ast/ASTList;
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v4

    .line 931
    .local v4, "dim":I
    iget-object v5, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v5}, Ljavassist/compiler/Lex;->get()I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 934
    new-instance v2, Ljavassist/compiler/ast/CastExpr;

    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseUnaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-direct {v2, v1, v4, v3}, Ljavassist/compiler/ast/CastExpr;-><init>(Ljavassist/compiler/ast/ASTList;ILjavassist/compiler/ast/ASTree;)V

    return-object v2

    .line 932
    :cond_2
    new-instance v3, Ljavassist/compiler/CompileError;

    iget-object v5, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v3, v2, v5}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v3

    .line 937
    .end local v1    # "name":Ljavassist/compiler/ast/ASTList;
    .end local v4    # "dim":I
    :cond_3
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parsePostfix(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    return-object v1
.end method

.method private parseClassType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;
    .locals 3
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 999
    const/4 v0, 0x0

    .line 1001
    .local v0, "list":Ljavassist/compiler/ast/ASTList;
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_1

    .line 1004
    new-instance v1, Ljavassist/compiler/ast/Symbol;

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljavassist/compiler/ast/ASTList;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 1005
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    .line 1006
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    goto :goto_0

    .line 1011
    :cond_0
    return-object v0

    .line 1002
    :cond_1
    new-instance v1, Ljavassist/compiler/SyntaxError;

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v1, v2}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v1
.end method

.method private parseConditionalExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 5
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 739
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseBinaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 740
    .local v0, "cond":Ljavassist/compiler/ast/ASTree;
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1

    .line 741
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 742
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 743
    .local v1, "thenExpr":Ljavassist/compiler/ast/ASTree;
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    .line 746
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 747
    .local v2, "elseExpr":Ljavassist/compiler/ast/ASTree;
    new-instance v3, Ljavassist/compiler/ast/CondExpr;

    invoke-direct {v3, v0, v1, v2}, Ljavassist/compiler/ast/CondExpr;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    return-object v3

    .line 744
    .end local v2    # "elseExpr":Ljavassist/compiler/ast/ASTree;
    :cond_0
    new-instance v2, Ljavassist/compiler/CompileError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v4, ": is missing"

    invoke-direct {v2, v4, v3}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v2

    .line 749
    .end local v1    # "thenExpr":Ljavassist/compiler/ast/ASTree;
    :cond_1
    return-object v0
.end method

.method private parseContinue(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 6
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 557
    .local v0, "t":I
    new-instance v1, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v1, v0}, Ljavassist/compiler/ast/Stmnt;-><init>(I)V

    .line 558
    .local v1, "s":Ljavassist/compiler/ast/Stmnt;
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    .line 559
    .local v2, "t2":I
    const/16 v3, 0x190

    if-ne v2, v3, :cond_0

    .line 560
    new-instance v3, Ljavassist/compiler/ast/Symbol;

    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljavassist/compiler/ast/Stmnt;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    .line 561
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    .line 564
    :cond_0
    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    .line 567
    return-object v1

    .line 565
    :cond_1
    new-instance v3, Ljavassist/compiler/CompileError;

    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v5, "; is missing"

    invoke-direct {v3, v5, v4}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v3
.end method

.method private parseDeclarationOrExpression(Ljavassist/compiler/SymbolTable;Z)Ljavassist/compiler/ast/Stmnt;
    .locals 5
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .param p2, "exprList"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    .line 584
    .local v0, "t":I
    :goto_0
    const/16 v1, 0x13b

    if-ne v0, v1, :cond_0

    .line 585
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 586
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    goto :goto_0

    .line 589
    :cond_0
    invoke-static {v0}, Ljavassist/compiler/Parser;->isBuiltinType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 591
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v1

    .line 592
    .local v1, "dim":I
    new-instance v2, Ljavassist/compiler/ast/Declarator;

    invoke-direct {v2, v0, v1}, Ljavassist/compiler/ast/Declarator;-><init>(II)V

    invoke-direct {p0, p1, v2}, Ljavassist/compiler/Parser;->parseDeclarators(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v2

    return-object v2

    .line 594
    .end local v1    # "dim":I
    :cond_1
    const/16 v1, 0x190

    if-ne v0, v1, :cond_2

    .line 595
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Ljavassist/compiler/Parser;->nextIsClassType(I)I

    move-result v2

    .line 596
    .local v2, "i":I
    if-ltz v2, :cond_2

    .line 597
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3, v2}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 598
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseClassType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    .line 599
    .local v1, "name":Ljavassist/compiler/ast/ASTList;
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v3

    .line 600
    .local v3, "dim":I
    new-instance v4, Ljavassist/compiler/ast/Declarator;

    invoke-direct {v4, v1, v3}, Ljavassist/compiler/ast/Declarator;-><init>(Ljavassist/compiler/ast/ASTList;I)V

    invoke-direct {p0, p1, v4}, Ljavassist/compiler/Parser;->parseDeclarators(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v4

    return-object v4

    .line 605
    .end local v1    # "name":Ljavassist/compiler/ast/ASTList;
    .end local v2    # "i":I
    .end local v3    # "dim":I
    :cond_2
    if-eqz p2, :cond_3

    .line 606
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseExprList(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    .local v1, "expr":Ljavassist/compiler/ast/Stmnt;
    goto :goto_1

    .line 608
    .end local v1    # "expr":Ljavassist/compiler/ast/Stmnt;
    :cond_3
    new-instance v1, Ljavassist/compiler/ast/Stmnt;

    const/16 v2, 0x45

    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    .line 610
    .restart local v1    # "expr":Ljavassist/compiler/ast/Stmnt;
    :goto_1
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_4

    .line 613
    return-object v1

    .line 611
    :cond_4
    new-instance v2, Ljavassist/compiler/CompileError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v4, "; is missing"

    invoke-direct {v2, v4, v3}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v2
.end method

.method private parseDeclarator(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/Declarator;
    .locals 6
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .param p2, "d"    # Ljavassist/compiler/ast/Declarator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 652
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v0

    const/16 v1, 0x158

    if-eq v0, v1, :cond_1

    .line 655
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v1, v0}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    .line 657
    .local v1, "symbol":Ljavassist/compiler/ast/Symbol;
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v2

    .line 658
    .local v2, "dim":I
    const/4 v3, 0x0

    .line 659
    .local v3, "init":Ljavassist/compiler/ast/ASTree;
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v4

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_0

    .line 660
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->get()I

    .line 661
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseInitializer(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    .line 664
    :cond_0
    invoke-virtual {p2, v1, v2, v3}, Ljavassist/compiler/ast/Declarator;->make(Ljavassist/compiler/ast/Symbol;ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Declarator;

    move-result-object v4

    .line 665
    .local v4, "decl":Ljavassist/compiler/ast/Declarator;
    invoke-virtual {p1, v0, v4}, Ljavassist/compiler/SymbolTable;->append(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V

    .line 666
    return-object v4

    .line 653
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "symbol":Ljavassist/compiler/ast/Symbol;
    .end local v2    # "dim":I
    .end local v3    # "init":Ljavassist/compiler/ast/ASTree;
    .end local v4    # "decl":Ljavassist/compiler/ast/Declarator;
    :cond_1
    new-instance v0, Ljavassist/compiler/SyntaxError;

    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v0, v1}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v0
.end method

.method private parseDeclarators(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/Stmnt;
    .locals 5
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .param p2, "d"    # Ljavassist/compiler/ast/Declarator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 635
    const/4 v0, 0x0

    .line 637
    .local v0, "decl":Ljavassist/compiler/ast/Stmnt;
    :goto_0
    new-instance v1, Ljavassist/compiler/ast/Stmnt;

    const/16 v2, 0x44

    .line 638
    invoke-direct {p0, p1, p2}, Ljavassist/compiler/Parser;->parseDeclarator(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/Declarator;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    .line 637
    invoke-static {v0, v1}, Ljavassist/compiler/ast/ASTList;->concat(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavassist/compiler/ast/Stmnt;

    .line 639
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    .line 640
    .local v1, "t":I
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    .line 641
    return-object v0

    .line 642
    :cond_0
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_1

    .line 644
    .end local v1    # "t":I
    goto :goto_0

    .line 643
    .restart local v1    # "t":I
    :cond_1
    new-instance v2, Ljavassist/compiler/CompileError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v4, "; is missing"

    invoke-direct {v2, v4, v3}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v2
.end method

.method private parseDo(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 5
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 351
    .local v0, "t":I
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    .line 352
    .local v1, "body":Ljavassist/compiler/ast/Stmnt;
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x15a

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1

    .line 355
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 356
    .local v2, "expr":Ljavassist/compiler/ast/ASTree;
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_0

    .line 359
    new-instance v3, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v3, v0, v2, v1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v3

    .line 357
    :cond_0
    new-instance v3, Ljavassist/compiler/SyntaxError;

    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v3, v4}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v3

    .line 353
    .end local v2    # "expr":Ljavassist/compiler/ast/ASTree;
    :cond_1
    new-instance v2, Ljavassist/compiler/SyntaxError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v2, v3}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v2
.end method

.method private parseDotClass(II)Ljavassist/compiler/ast/ASTree;
    .locals 5
    .param p1, "builtinType"    # I
    .param p2, "dim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1134
    if-lez p2, :cond_0

    .line 1135
    invoke-static {p1, p2}, Ljavassist/compiler/CodeGen;->toJvmTypeName(II)Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, "cname":Ljava/lang/String;
    const/16 v1, 0x2e

    new-instance v2, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v2, v0}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljavassist/compiler/ast/Member;

    const-string v4, "class"

    invoke-direct {v3, v4}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v1

    return-object v1

    .line 1139
    .end local v0    # "cname":Ljava/lang/String;
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1168
    new-instance v0, Ljavassist/compiler/CompileError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid builtin type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1165
    :sswitch_0
    const-string v0, "java.lang.Void"

    .line 1166
    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 1150
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_1
    const-string v0, "java.lang.Short"

    .line 1151
    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 1156
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_2
    const-string v0, "java.lang.Long"

    .line 1157
    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 1153
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_3
    const-string v0, "java.lang.Integer"

    .line 1154
    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 1159
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_4
    const-string v0, "java.lang.Float"

    .line 1160
    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 1162
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_5
    const-string v0, "java.lang.Double"

    .line 1163
    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 1147
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_6
    const-string v0, "java.lang.Character"

    .line 1148
    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 1144
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_7
    const-string v0, "java.lang.Byte"

    .line 1145
    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 1141
    .end local v0    # "cname":Ljava/lang/String;
    :sswitch_8
    const-string v0, "java.lang.Boolean"

    .line 1142
    .restart local v0    # "cname":Ljava/lang/String;
    nop

    .line 1172
    :goto_0
    const/16 v1, 0x23

    new-instance v2, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v2, v0}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljavassist/compiler/ast/Member;

    const-string v4, "TYPE"

    invoke-direct {v3, v4}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_8
        0x12f -> :sswitch_7
        0x132 -> :sswitch_6
        0x138 -> :sswitch_5
        0x13d -> :sswitch_4
        0x144 -> :sswitch_3
        0x146 -> :sswitch_2
        0x14e -> :sswitch_1
        0x158 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseDotClass(Ljavassist/compiler/ast/ASTree;I)Ljavassist/compiler/ast/ASTree;
    .locals 5
    .param p1, "className"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "dim"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1114
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->toClassName(Ljavassist/compiler/ast/ASTree;)Ljava/lang/String;

    move-result-object v0

    .line 1115
    .local v0, "cname":Ljava/lang/String;
    const/16 v1, 0x2e

    if-lez p2, :cond_1

    .line 1116
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1117
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    :goto_0
    add-int/lit8 v3, p2, -0x1

    .end local p2    # "dim":I
    .local v3, "dim":I
    if-lez p2, :cond_0

    .line 1118
    const/16 p2, 0x5b

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v3

    goto :goto_0

    .line 1120
    :cond_0
    const/16 p2, 0x4c

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object p2

    const/16 v4, 0x2f

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const/16 v4, 0x3b

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1121
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move p2, v3

    .line 1124
    .end local v2    # "sbuf":Ljava/lang/StringBuffer;
    .end local v3    # "dim":I
    .restart local p2    # "dim":I
    :cond_1
    new-instance v2, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v2, v0}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljavassist/compiler/ast/Member;

    const-string v4, "class"

    invoke-direct {v3, v4}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v1

    return-object v1
.end method

.method private parseExprList(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 4
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 619
    const/4 v0, 0x0

    .line 621
    .local v0, "expr":Ljavassist/compiler/ast/Stmnt;
    :goto_0
    new-instance v1, Ljavassist/compiler/ast/Stmnt;

    const/16 v2, 0x45

    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    .line 622
    .local v1, "e":Ljavassist/compiler/ast/Stmnt;
    new-instance v2, Ljavassist/compiler/ast/Stmnt;

    const/16 v3, 0x42

    invoke-direct {v2, v3, v1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    invoke-static {v0, v2}, Ljavassist/compiler/ast/ASTList;->concat(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljavassist/compiler/ast/Stmnt;

    .line 623
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_0

    .line 624
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    .line 627
    .end local v1    # "e":Ljavassist/compiler/ast/Stmnt;
    goto :goto_0

    .line 626
    .restart local v1    # "e":Ljavassist/compiler/ast/Stmnt;
    :cond_0
    return-object v0
.end method

.method private parseField(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/FieldDecl;
    .locals 5
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .param p2, "mods"    # Ljavassist/compiler/ast/ASTList;
    .param p3, "d"    # Ljavassist/compiler/ast/Declarator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "expr":Ljavassist/compiler/ast/ASTree;
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_0

    .line 100
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 101
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 104
    :cond_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    .line 105
    .local v1, "c":I
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_1

    .line 106
    new-instance v2, Ljavassist/compiler/ast/FieldDecl;

    new-instance v3, Ljavassist/compiler/ast/ASTList;

    new-instance v4, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v4, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v3, p3, v4}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {v2, p2, v3}, Ljavassist/compiler/ast/FieldDecl;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v2

    .line 107
    :cond_1
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    .line 108
    new-instance v2, Ljavassist/compiler/CompileError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v4, "only one field can be declared in one declaration"

    invoke-direct {v2, v4, v3}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v2

    .line 111
    :cond_2
    new-instance v2, Ljavassist/compiler/SyntaxError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v2, v3}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v2
.end method

.method private parseFor(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 9
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 370
    .local v0, "t":I
    new-instance v1, Ljavassist/compiler/SymbolTable;

    invoke-direct {v1, p1}, Ljavassist/compiler/SymbolTable;-><init>(Ljavassist/compiler/SymbolTable;)V

    .line 372
    .local v1, "tbl2":Ljavassist/compiler/SymbolTable;
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_5

    .line 375
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    .line 376
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    .line 377
    const/4 v2, 0x0

    .local v2, "expr1":Ljavassist/compiler/ast/Stmnt;
    goto :goto_0

    .line 380
    .end local v2    # "expr1":Ljavassist/compiler/ast/Stmnt;
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljavassist/compiler/Parser;->parseDeclarationOrExpression(Ljavassist/compiler/SymbolTable;Z)Ljavassist/compiler/ast/Stmnt;

    move-result-object v2

    .line 382
    .restart local v2    # "expr1":Ljavassist/compiler/ast/Stmnt;
    :goto_0
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 383
    const/4 v4, 0x0

    .local v4, "expr2":Ljavassist/compiler/ast/ASTree;
    goto :goto_1

    .line 385
    .end local v4    # "expr2":Ljavassist/compiler/ast/ASTree;
    :cond_1
    invoke-virtual {p0, v1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v4

    .line 387
    .restart local v4    # "expr2":Ljavassist/compiler/ast/ASTree;
    :goto_1
    iget-object v5, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v5}, Ljavassist/compiler/Lex;->get()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 390
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v3

    const/16 v5, 0x29

    if-ne v3, v5, :cond_2

    .line 391
    const/4 v3, 0x0

    .local v3, "expr3":Ljavassist/compiler/ast/Stmnt;
    goto :goto_2

    .line 393
    .end local v3    # "expr3":Ljavassist/compiler/ast/Stmnt;
    :cond_2
    invoke-direct {p0, v1}, Ljavassist/compiler/Parser;->parseExprList(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v3

    .line 395
    .restart local v3    # "expr3":Ljavassist/compiler/ast/Stmnt;
    :goto_2
    iget-object v6, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v6}, Ljavassist/compiler/Lex;->get()I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 398
    invoke-virtual {p0, v1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v5

    .line 399
    .local v5, "body":Ljavassist/compiler/ast/Stmnt;
    new-instance v6, Ljavassist/compiler/ast/Stmnt;

    new-instance v7, Ljavassist/compiler/ast/ASTList;

    new-instance v8, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v8, v3, v5}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {v7, v4, v8}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {v6, v0, v2, v7}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v6

    .line 396
    .end local v5    # "body":Ljavassist/compiler/ast/Stmnt;
    :cond_3
    new-instance v5, Ljavassist/compiler/CompileError;

    iget-object v6, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v7, ") is missing"

    invoke-direct {v5, v7, v6}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v5

    .line 388
    .end local v3    # "expr3":Ljavassist/compiler/ast/Stmnt;
    :cond_4
    new-instance v3, Ljavassist/compiler/CompileError;

    iget-object v5, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v6, "; is missing"

    invoke-direct {v3, v6, v5}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v3

    .line 373
    .end local v2    # "expr1":Ljavassist/compiler/ast/Stmnt;
    .end local v4    # "expr2":Ljavassist/compiler/ast/ASTree;
    :cond_5
    new-instance v2, Ljavassist/compiler/SyntaxError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v2, v3}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v2
.end method

.method private parseFormalParam(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Declarator;
    .locals 3
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 226
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseFormalType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Declarator;

    move-result-object v0

    .line 227
    .local v0, "d":Ljavassist/compiler/ast/Declarator;
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_0

    .line 230
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v2, v1}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavassist/compiler/ast/Declarator;->setVariable(Ljavassist/compiler/ast/Symbol;)V

    .line 232
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v2

    invoke-virtual {v0, v2}, Ljavassist/compiler/ast/Declarator;->addArrayDim(I)V

    .line 233
    invoke-virtual {p1, v1, v0}, Ljavassist/compiler/SymbolTable;->append(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V

    .line 234
    return-object v0

    .line 228
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljavassist/compiler/SyntaxError;

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v1, v2}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v1
.end method

.method private parseFormalType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Declarator;
    .locals 4
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    .line 206
    .local v0, "t":I
    invoke-static {v0}, Ljavassist/compiler/Parser;->isBuiltinType(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x158

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseClassType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    .line 212
    .local v1, "name":Ljavassist/compiler/ast/ASTList;
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v2

    .line 213
    .local v2, "dim":I
    new-instance v3, Ljavassist/compiler/ast/Declarator;

    invoke-direct {v3, v1, v2}, Ljavassist/compiler/ast/Declarator;-><init>(Ljavassist/compiler/ast/ASTList;I)V

    return-object v3

    .line 207
    .end local v1    # "name":Ljavassist/compiler/ast/ASTList;
    .end local v2    # "dim":I
    :cond_1
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 208
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v1

    .line 209
    .local v1, "dim":I
    new-instance v2, Ljavassist/compiler/ast/Declarator;

    invoke-direct {v2, v0, v1}, Ljavassist/compiler/ast/Declarator;-><init>(II)V

    return-object v2
.end method

.method private parseIf(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 7
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 323
    .local v0, "t":I
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseParExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 324
    .local v1, "expr":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v2

    .line 326
    .local v2, "thenp":Ljavassist/compiler/ast/Stmnt;
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v3

    const/16 v4, 0x139

    if-ne v3, v4, :cond_0

    .line 327
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    .line 328
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v3

    .local v3, "elsep":Ljavassist/compiler/ast/Stmnt;
    goto :goto_0

    .line 331
    .end local v3    # "elsep":Ljavassist/compiler/ast/Stmnt;
    :cond_0
    const/4 v3, 0x0

    .line 333
    .restart local v3    # "elsep":Ljavassist/compiler/ast/Stmnt;
    :goto_0
    new-instance v4, Ljavassist/compiler/ast/Stmnt;

    new-instance v5, Ljavassist/compiler/ast/ASTList;

    new-instance v6, Ljavassist/compiler/ast/ASTList;

    invoke-direct {v6, v3}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;)V

    invoke-direct {v5, v2, v6}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {v4, v0, v1, v5}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v4
.end method

.method private parseInitializer(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 2
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 672
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    .line 673
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArrayInitializer(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ArrayInit;

    move-result-object v0

    return-object v0

    .line 674
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0
.end method

.method private parseInstanceOf(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;
    .locals 4
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .param p2, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    .line 808
    .local v0, "t":I
    invoke-static {v0}, Ljavassist/compiler/Parser;->isBuiltinType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 810
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v1

    .line 811
    .local v1, "dim":I
    new-instance v2, Ljavassist/compiler/ast/InstanceOfExpr;

    invoke-direct {v2, v0, v1, p2}, Ljavassist/compiler/ast/InstanceOfExpr;-><init>(IILjavassist/compiler/ast/ASTree;)V

    return-object v2

    .line 813
    .end local v1    # "dim":I
    :cond_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseClassType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    .line 814
    .local v1, "name":Ljavassist/compiler/ast/ASTList;
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v2

    .line 815
    .local v2, "dim":I
    new-instance v3, Ljavassist/compiler/ast/InstanceOfExpr;

    invoke-direct {v3, v1, v2, p2}, Ljavassist/compiler/ast/InstanceOfExpr;-><init>(Ljavassist/compiler/ast/ASTList;ILjavassist/compiler/ast/ASTree;)V

    return-object v3
.end method

.method private parseMemberMods()Ljavassist/compiler/ast/ASTList;
    .locals 5

    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, "list":Ljavassist/compiler/ast/ASTList;
    :goto_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    .line 191
    .local v1, "t":I
    const/16 v2, 0x12c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x13b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x14c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x14b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x14a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x152

    if-eq v1, v2, :cond_1

    const/16 v2, 0x14f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x159

    if-eq v1, v2, :cond_1

    const/16 v2, 0x156

    if-eq v1, v2, :cond_1

    const/16 v2, 0x15b

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 199
    :cond_0
    return-object v0

    .line 194
    :cond_1
    :goto_1
    new-instance v2, Ljavassist/compiler/ast/ASTList;

    new-instance v3, Ljavassist/compiler/ast/Keyword;

    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->get()I

    move-result v4

    invoke-direct {v3, v4}, Ljavassist/compiler/ast/Keyword;-><init>(I)V

    invoke-direct {v2, v3, v0}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private parseMethod1(Ljavassist/compiler/SymbolTable;ZLjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/MethodDecl;
    .locals 5
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .param p2, "isConstructor"    # Z
    .param p3, "mods"    # Ljavassist/compiler/ast/ASTList;
    .param p4, "d"    # Ljavassist/compiler/ast/Declarator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_6

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "parms":Ljavassist/compiler/ast/ASTList;
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x2c

    const/16 v3, 0x29

    if-eq v1, v3, :cond_2

    .line 134
    :goto_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseFormalParam(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Declarator;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/compiler/ast/ASTList;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 135
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    .line 136
    .local v1, "t":I
    if-ne v1, v2, :cond_0

    .line 137
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->get()I

    goto :goto_1

    .line 138
    :cond_0
    if-ne v1, v3, :cond_1

    .line 139
    goto :goto_2

    .line 140
    .end local v1    # "t":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 142
    :cond_2
    :goto_2
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 143
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v1

    invoke-virtual {p4, v1}, Ljavassist/compiler/ast/Declarator;->addArrayDim(I)V

    .line 144
    if-eqz p2, :cond_4

    invoke-virtual {p4}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v1

    if-gtz v1, :cond_3

    goto :goto_3

    .line 145
    :cond_3
    new-instance v1, Ljavassist/compiler/SyntaxError;

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v1, v2}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v1

    .line 147
    :cond_4
    :goto_3
    const/4 v1, 0x0

    .line 148
    .local v1, "throwsList":Ljavassist/compiler/ast/ASTList;
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v3

    const/16 v4, 0x155

    if-ne v3, v4, :cond_5

    .line 149
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    .line 151
    :goto_4
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseClassType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    invoke-static {v1, v3}, Ljavassist/compiler/ast/ASTList;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    .line 152
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 153
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    goto :goto_4

    .line 159
    :cond_5
    new-instance v2, Ljavassist/compiler/ast/MethodDecl;

    new-instance v3, Ljavassist/compiler/ast/ASTList;

    const/4 v4, 0x0

    .line 160
    invoke-static {v0, v1, v4}, Ljavassist/compiler/ast/ASTList;->make(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object v4

    invoke-direct {v3, p4, v4}, Ljavassist/compiler/ast/ASTList;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    invoke-direct {v2, p3, v3}, Ljavassist/compiler/ast/MethodDecl;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    .line 159
    return-object v2

    .line 129
    .end local v0    # "parms":Ljavassist/compiler/ast/ASTList;
    .end local v1    # "throwsList":Ljavassist/compiler/ast/ASTList;
    :cond_6
    new-instance v0, Ljavassist/compiler/SyntaxError;

    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v0, v1}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v0
.end method

.method private parseMethodCall(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;
    .locals 3
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .param p2, "expr"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1183
    instance-of v0, p2, Ljavassist/compiler/ast/Keyword;

    if-eqz v0, :cond_2

    .line 1184
    move-object v0, p2

    check-cast v0, Ljavassist/compiler/ast/Keyword;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Keyword;->get()I

    move-result v0

    .line 1185
    .local v0, "token":I
    const/16 v1, 0x153

    if-eq v0, v1, :cond_1

    const/16 v1, 0x150

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1186
    :cond_0
    new-instance v1, Ljavassist/compiler/SyntaxError;

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v1, v2}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v1

    .line 1187
    .end local v0    # "token":I
    :cond_1
    :goto_0
    goto :goto_1

    .line 1188
    :cond_2
    instance-of v0, p2, Ljavassist/compiler/ast/Symbol;

    if-eqz v0, :cond_3

    .line 1189
    goto :goto_1

    .line 1190
    :cond_3
    instance-of v0, p2, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_5

    .line 1191
    move-object v0, p2

    check-cast v0, Ljavassist/compiler/ast/Expr;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v0

    .line 1192
    .local v0, "op":I
    const/16 v1, 0x2e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 1193
    :cond_4
    new-instance v1, Ljavassist/compiler/SyntaxError;

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v1, v2}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v1

    .line 1196
    .end local v0    # "op":I
    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArgumentList(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    invoke-static {p2, v0}, Ljavassist/compiler/ast/CallExpr;->makeCall(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/CallExpr;

    move-result-object v0

    return-object v0
.end method

.method private parseNew(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/NewExpr;
    .locals 6
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1281
    const/4 v0, 0x0

    .line 1282
    .local v0, "init":Ljavassist/compiler/ast/ArrayInit;
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    .line 1283
    .local v1, "t":I
    invoke-static {v1}, Ljavassist/compiler/Parser;->isBuiltinType(I)Z

    move-result v2

    const/16 v3, 0x7b

    if-eqz v2, :cond_1

    .line 1284
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    .line 1285
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArraySize(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    .line 1286
    .local v2, "size":Ljavassist/compiler/ast/ASTList;
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1287
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArrayInitializer(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ArrayInit;

    move-result-object v0

    .line 1289
    :cond_0
    new-instance v3, Ljavassist/compiler/ast/NewExpr;

    invoke-direct {v3, v1, v2, v0}, Ljavassist/compiler/ast/NewExpr;-><init>(ILjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ArrayInit;)V

    return-object v3

    .line 1291
    .end local v2    # "size":Ljavassist/compiler/ast/ASTList;
    :cond_1
    const/16 v2, 0x190

    if-ne v1, v2, :cond_4

    .line 1292
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseClassType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v2

    .line 1293
    .local v2, "name":Ljavassist/compiler/ast/ASTList;
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    .line 1294
    const/16 v4, 0x28

    if-ne v1, v4, :cond_2

    .line 1295
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArgumentList(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v3

    .line 1296
    .local v3, "args":Ljavassist/compiler/ast/ASTList;
    new-instance v4, Ljavassist/compiler/ast/NewExpr;

    invoke-direct {v4, v2, v3}, Ljavassist/compiler/ast/NewExpr;-><init>(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)V

    return-object v4

    .line 1298
    .end local v3    # "args":Ljavassist/compiler/ast/ASTList;
    :cond_2
    const/16 v4, 0x5b

    if-ne v1, v4, :cond_4

    .line 1299
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArraySize(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v4

    .line 1300
    .local v4, "size":Ljavassist/compiler/ast/ASTList;
    iget-object v5, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v5}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 1301
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArrayInitializer(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ArrayInit;

    move-result-object v0

    .line 1303
    :cond_3
    invoke-static {v2, v4, v0}, Ljavassist/compiler/ast/NewExpr;->makeObjectArray(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ArrayInit;)Ljavassist/compiler/ast/NewExpr;

    move-result-object v3

    return-object v3

    .line 1307
    .end local v2    # "name":Ljavassist/compiler/ast/ASTList;
    .end local v4    # "size":Ljavassist/compiler/ast/ASTList;
    :cond_4
    new-instance v2, Ljavassist/compiler/SyntaxError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v2, v3}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v2
.end method

.method private parseParExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 3
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 705
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    .line 708
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 709
    .local v0, "expr":Ljavassist/compiler/ast/ASTree;
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_0

    .line 712
    return-object v0

    .line 710
    :cond_0
    new-instance v1, Ljavassist/compiler/SyntaxError;

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v1, v2}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v1

    .line 706
    .end local v0    # "expr":Ljavassist/compiler/ast/ASTree;
    :cond_1
    new-instance v0, Ljavassist/compiler/SyntaxError;

    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v0, v1}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v0
.end method

.method private parsePostfix(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 7
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    .line 1033
    .local v0, "token":I
    packed-switch v0, :pswitch_data_0

    .line 1049
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parsePrimaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .local v1, "expr":Ljavassist/compiler/ast/ASTree;
    goto :goto_0

    .line 1041
    .end local v1    # "expr":Ljavassist/compiler/ast/ASTree;
    :pswitch_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 1042
    new-instance v1, Ljavassist/compiler/ast/DoubleConst;

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->getDouble()D

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Ljavassist/compiler/ast/DoubleConst;-><init>(DI)V

    return-object v1

    .line 1037
    :pswitch_1
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 1038
    new-instance v1, Ljavassist/compiler/ast/IntConst;

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->getLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Ljavassist/compiler/ast/IntConst;-><init>(JI)V

    return-object v1

    .line 1052
    .restart local v1    # "expr":Ljavassist/compiler/ast/ASTree;
    :goto_0
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v2

    const/16 v3, 0x133

    const/16 v4, 0x190

    const/16 v5, 0x2e

    sparse-switch v2, :sswitch_data_0

    .line 1102
    return-object v1

    .line 1074
    :sswitch_0
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    .line 1075
    .local v2, "t":I
    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v1

    .line 1076
    goto :goto_0

    .line 1057
    .end local v2    # "t":I
    :sswitch_1
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v2

    const/16 v4, 0x5d

    if-ne v2, v4, :cond_1

    .line 1058
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v2

    .line 1059
    .local v2, "dim":I
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->get()I

    move-result v4

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->get()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1062
    invoke-direct {p0, v1, v2}, Ljavassist/compiler/Parser;->parseDotClass(Ljavassist/compiler/ast/ASTree;I)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 1063
    .end local v2    # "dim":I
    goto :goto_0

    .line 1060
    .restart local v2    # "dim":I
    :cond_0
    new-instance v3, Ljavassist/compiler/SyntaxError;

    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v3, v4}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v3

    .line 1065
    .end local v2    # "dim":I
    :cond_1
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseArrayIndex(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 1066
    .local v2, "index":Ljavassist/compiler/ast/ASTree;
    if-eqz v2, :cond_2

    .line 1069
    const/16 v3, 0x41

    invoke-static {v3, v1, v2}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v1

    .line 1071
    goto :goto_0

    .line 1067
    :cond_2
    new-instance v3, Ljavassist/compiler/SyntaxError;

    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v3, v4}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v3

    .line 1078
    .end local v2    # "index":Ljavassist/compiler/ast/ASTree;
    :sswitch_2
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    .line 1079
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    .line 1080
    .local v2, "t":I
    if-ne v2, v3, :cond_3

    .line 1081
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Ljavassist/compiler/Parser;->parseDotClass(Ljavassist/compiler/ast/ASTree;I)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    goto :goto_0

    .line 1082
    :cond_3
    const/16 v3, 0x150

    if-ne v2, v3, :cond_4

    .line 1083
    new-instance v3, Ljavassist/compiler/ast/Symbol;

    invoke-direct {p0, v1}, Ljavassist/compiler/Parser;->toClassName(Ljavassist/compiler/ast/ASTree;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljavassist/compiler/ast/Keyword;

    invoke-direct {v4, v2}, Ljavassist/compiler/ast/Keyword;-><init>(I)V

    invoke-static {v5, v3, v4}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v1

    goto/16 :goto_0

    .line 1084
    :cond_4
    if-ne v2, v4, :cond_5

    .line 1085
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v3

    .line 1086
    .local v3, "str":Ljava/lang/String;
    new-instance v4, Ljavassist/compiler/ast/Member;

    invoke-direct {v4, v3}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v1, v4}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v1

    goto/16 :goto_0

    .line 1089
    .end local v3    # "str":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljavassist/compiler/CompileError;

    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v5, "missing member name"

    invoke-direct {v3, v5, v4}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v3

    .line 1054
    .end local v2    # "t":I
    :sswitch_3
    invoke-direct {p0, p1, v1}, Ljavassist/compiler/Parser;->parseMethodCall(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 1055
    goto/16 :goto_0

    .line 1092
    :sswitch_4
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    .line 1093
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    .line 1094
    .restart local v2    # "t":I
    if-ne v2, v4, :cond_6

    .line 1097
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v3

    .line 1098
    .restart local v3    # "str":Ljava/lang/String;
    const/16 v4, 0x23

    new-instance v5, Ljavassist/compiler/ast/Symbol;

    invoke-direct {p0, v1}, Ljavassist/compiler/Parser;->toClassName(Ljavassist/compiler/ast/ASTree;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljavassist/compiler/ast/Member;

    invoke-direct {v6, v3}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v6}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v1

    .line 1100
    goto/16 :goto_0

    .line 1095
    .end local v3    # "str":Ljava/lang/String;
    :cond_6
    new-instance v3, Ljavassist/compiler/CompileError;

    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v5, "missing static member name"

    invoke-direct {v3, v5, v4}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_4
        0x28 -> :sswitch_3
        0x2e -> :sswitch_2
        0x5b -> :sswitch_1
        0x16a -> :sswitch_0
        0x16b -> :sswitch_0
    .end sparse-switch
.end method

.method private parsePrimaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 5
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1243
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    move v1, v0

    .local v1, "t":I
    sparse-switch v0, :sswitch_data_0

    .line 1266
    invoke-static {v1}, Ljavassist/compiler/Parser;->isBuiltinType(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x158

    if-ne v1, v0, :cond_3

    goto :goto_0

    .line 1257
    :sswitch_0
    new-instance v0, Ljavassist/compiler/ast/StringL;

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavassist/compiler/ast/StringL;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1251
    :sswitch_1
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1252
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljavassist/compiler/SymbolTable;->lookup(Ljava/lang/String;)Ljavassist/compiler/ast/Declarator;

    move-result-object v2

    .line 1253
    .local v2, "decl":Ljavassist/compiler/ast/Declarator;
    if-nez v2, :cond_0

    .line 1254
    new-instance v3, Ljavassist/compiler/ast/Member;

    invoke-direct {v3, v0}, Ljavassist/compiler/ast/Member;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 1255
    :cond_0
    new-instance v3, Ljavassist/compiler/ast/Variable;

    invoke-direct {v3, v0, v2}, Ljavassist/compiler/ast/Variable;-><init>(Ljava/lang/String;Ljavassist/compiler/ast/Declarator;)V

    return-object v3

    .line 1249
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "decl":Ljavassist/compiler/ast/Declarator;
    :sswitch_2
    new-instance v0, Ljavassist/compiler/ast/Keyword;

    invoke-direct {v0, v1}, Ljavassist/compiler/ast/Keyword;-><init>(I)V

    return-object v0

    .line 1259
    :sswitch_3
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseNew(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/NewExpr;

    move-result-object v0

    return-object v0

    .line 1261
    :sswitch_4
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 1262
    .local v0, "expr":Ljavassist/compiler/ast/ASTree;
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1

    .line 1263
    return-object v0

    .line 1264
    :cond_1
    new-instance v2, Ljavassist/compiler/CompileError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v4, ") is missing"

    invoke-direct {v2, v4, v3}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v2

    .line 1267
    .end local v0    # "expr":Ljavassist/compiler/ast/ASTree;
    :cond_2
    :goto_0
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseArrayDimension()I

    move-result v0

    .line 1268
    .local v0, "dim":I
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x133

    if-ne v2, v3, :cond_3

    .line 1269
    invoke-direct {p0, v1, v0}, Ljavassist/compiler/Parser;->parseDotClass(II)Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    return-object v2

    .line 1272
    .end local v0    # "dim":I
    :cond_3
    new-instance v0, Ljavassist/compiler/SyntaxError;

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v0, v2}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_4
        0x148 -> :sswitch_3
        0x150 -> :sswitch_2
        0x153 -> :sswitch_2
        0x190 -> :sswitch_1
        0x196 -> :sswitch_0
        0x19a -> :sswitch_2
        0x19b -> :sswitch_2
        0x19c -> :sswitch_2
    .end sparse-switch
.end method

.method private parseReturn(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 5
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 522
    .local v0, "t":I
    new-instance v1, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v1, v0}, Ljavassist/compiler/ast/Stmnt;-><init>(I)V

    .line 523
    .local v1, "s":Ljavassist/compiler/ast/Stmnt;
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    .line 524
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavassist/compiler/ast/Stmnt;->setLeft(Ljavassist/compiler/ast/ASTree;)V

    .line 526
    :cond_0
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 529
    return-object v1

    .line 527
    :cond_1
    new-instance v2, Ljavassist/compiler/CompileError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v4, "; is missing"

    invoke-direct {v2, v4, v3}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v2
.end method

.method private parseStmntOrCase(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 5
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    .line 451
    .local v0, "t":I
    const/16 v1, 0x136

    const/16 v2, 0x130

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 452
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    return-object v1

    .line 454
    :cond_0
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    .line 456
    if-ne v0, v2, :cond_1

    .line 457
    new-instance v1, Ljavassist/compiler/ast/Stmnt;

    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    .local v1, "s":Ljavassist/compiler/ast/Stmnt;
    goto :goto_0

    .line 459
    .end local v1    # "s":Ljavassist/compiler/ast/Stmnt;
    :cond_1
    new-instance v2, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v2, v1}, Ljavassist/compiler/ast/Stmnt;-><init>(I)V

    move-object v1, v2

    .line 461
    .restart local v1    # "s":Ljavassist/compiler/ast/Stmnt;
    :goto_0
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_2

    .line 464
    return-object v1

    .line 462
    :cond_2
    new-instance v2, Ljavassist/compiler/CompileError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v4, ": is missing"

    invoke-direct {v2, v4, v3}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v2
.end method

.method private parseSwitch(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 4
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 412
    .local v0, "t":I
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseParExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 413
    .local v1, "expr":Ljavassist/compiler/ast/ASTree;
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseSwitchBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v2

    .line 414
    .local v2, "body":Ljavassist/compiler/ast/Stmnt;
    new-instance v3, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v3, v0, v1, v2}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v3
.end method

.method private parseSwitchBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 10
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_7

    .line 421
    new-instance v0, Ljavassist/compiler/SymbolTable;

    invoke-direct {v0, p1}, Ljavassist/compiler/SymbolTable;-><init>(Ljavassist/compiler/SymbolTable;)V

    .line 422
    .local v0, "tbl2":Ljavassist/compiler/SymbolTable;
    invoke-direct {p0, v0}, Ljavassist/compiler/Parser;->parseStmntOrCase(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    .line 423
    .local v1, "s":Ljavassist/compiler/ast/Stmnt;
    if-eqz v1, :cond_6

    .line 426
    invoke-virtual {v1}, Ljavassist/compiler/ast/Stmnt;->getOperator()I

    move-result v2

    .line 427
    .local v2, "op":I
    const/16 v3, 0x136

    const/16 v4, 0x130

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    new-instance v3, Ljavassist/compiler/CompileError;

    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v5, "no case or default in a switch block"

    invoke-direct {v3, v5, v4}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v3

    .line 431
    :cond_1
    :goto_0
    new-instance v5, Ljavassist/compiler/ast/Stmnt;

    const/16 v6, 0x42

    invoke-direct {v5, v6, v1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    .line 432
    .local v5, "body":Ljavassist/compiler/ast/Stmnt;
    :goto_1
    iget-object v7, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v7}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v7

    const/16 v8, 0x7d

    if-eq v7, v8, :cond_5

    .line 433
    invoke-direct {p0, v0}, Ljavassist/compiler/Parser;->parseStmntOrCase(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v7

    .line 434
    .local v7, "s2":Ljavassist/compiler/ast/Stmnt;
    if-eqz v7, :cond_4

    .line 435
    invoke-virtual {v7}, Ljavassist/compiler/ast/Stmnt;->getOperator()I

    move-result v8

    .line 436
    .local v8, "op2":I
    if-eq v8, v4, :cond_3

    if-ne v8, v3, :cond_2

    goto :goto_2

    .line 441
    :cond_2
    new-instance v9, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v9, v6, v7}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    invoke-static {v1, v9}, Ljavassist/compiler/ast/ASTList;->concat(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/ast/ASTList;

    move-result-object v9

    move-object v1, v9

    check-cast v1, Ljavassist/compiler/ast/Stmnt;

    goto :goto_3

    .line 437
    :cond_3
    :goto_2
    new-instance v9, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v9, v6, v7}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    invoke-static {v5, v9}, Ljavassist/compiler/ast/ASTList;->concat(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTList;)Ljavassist/compiler/ast/ASTList;

    move-result-object v9

    move-object v5, v9

    check-cast v5, Ljavassist/compiler/ast/Stmnt;

    .line 438
    move-object v1, v7

    .line 443
    .end local v7    # "s2":Ljavassist/compiler/ast/Stmnt;
    .end local v8    # "op2":I
    :cond_4
    :goto_3
    goto :goto_1

    .line 445
    :cond_5
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    .line 446
    return-object v5

    .line 424
    .end local v2    # "op":I
    .end local v5    # "body":Ljavassist/compiler/ast/Stmnt;
    :cond_6
    new-instance v2, Ljavassist/compiler/CompileError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v4, "empty switch block"

    invoke-direct {v2, v4, v3}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v2

    .line 419
    .end local v0    # "tbl2":Ljavassist/compiler/SymbolTable;
    .end local v1    # "s":Ljavassist/compiler/ast/Stmnt;
    :cond_7
    new-instance v0, Ljavassist/compiler/SyntaxError;

    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v0, v1}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v0
.end method

.method private parseSynchronized(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 4
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 472
    .local v0, "t":I
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_1

    .line 475
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 476
    .local v1, "expr":Ljavassist/compiler/ast/ASTree;
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    .line 479
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v2

    .line 480
    .local v2, "body":Ljavassist/compiler/ast/Stmnt;
    new-instance v3, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v3, v0, v1, v2}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v3

    .line 477
    .end local v2    # "body":Ljavassist/compiler/ast/Stmnt;
    :cond_0
    new-instance v2, Ljavassist/compiler/SyntaxError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v2, v3}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v2

    .line 473
    .end local v1    # "expr":Ljavassist/compiler/ast/ASTree;
    :cond_1
    new-instance v1, Ljavassist/compiler/SyntaxError;

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v1, v2}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v1
.end method

.method private parseThrow(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 5
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 535
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 536
    .local v0, "t":I
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 537
    .local v1, "expr":Ljavassist/compiler/ast/ASTree;
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    .line 540
    new-instance v2, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v2, v0, v1}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;)V

    return-object v2

    .line 538
    :cond_0
    new-instance v2, Ljavassist/compiler/CompileError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v4, "; is missing"

    invoke-direct {v2, v4, v3}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v2
.end method

.method private parseTry(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 6
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    .line 490
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v0

    .line 491
    .local v0, "block":Ljavassist/compiler/ast/Stmnt;
    const/4 v1, 0x0

    .line 492
    .local v1, "catchList":Ljavassist/compiler/ast/ASTList;
    :goto_0
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v2

    const/16 v3, 0x131

    if-ne v2, v3, :cond_3

    .line 493
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    .line 494
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_2

    .line 497
    new-instance v2, Ljavassist/compiler/SymbolTable;

    invoke-direct {v2, p1}, Ljavassist/compiler/SymbolTable;-><init>(Ljavassist/compiler/SymbolTable;)V

    .line 498
    .local v2, "tbl2":Ljavassist/compiler/SymbolTable;
    invoke-direct {p0, v2}, Ljavassist/compiler/Parser;->parseFormalParam(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Declarator;

    move-result-object v3

    .line 499
    .local v3, "d":Ljavassist/compiler/ast/Declarator;
    invoke-virtual {v3}, Ljavassist/compiler/ast/Declarator;->getArrayDim()I

    move-result v4

    if-gtz v4, :cond_1

    invoke-virtual {v3}, Ljavassist/compiler/ast/Declarator;->getType()I

    move-result v4

    const/16 v5, 0x133

    if-ne v4, v5, :cond_1

    .line 502
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->get()I

    move-result v4

    const/16 v5, 0x29

    if-ne v4, v5, :cond_0

    .line 505
    invoke-direct {p0, v2}, Ljavassist/compiler/Parser;->parseBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v4

    .line 506
    .local v4, "b":Ljavassist/compiler/ast/Stmnt;
    new-instance v5, Ljavassist/compiler/ast/Pair;

    invoke-direct {v5, v3, v4}, Ljavassist/compiler/ast/Pair;-><init>(Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)V

    invoke-static {v1, v5}, Ljavassist/compiler/ast/ASTList;->append(Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    .line 507
    .end local v2    # "tbl2":Ljavassist/compiler/SymbolTable;
    .end local v3    # "d":Ljavassist/compiler/ast/Declarator;
    .end local v4    # "b":Ljavassist/compiler/ast/Stmnt;
    goto :goto_0

    .line 503
    .restart local v2    # "tbl2":Ljavassist/compiler/SymbolTable;
    .restart local v3    # "d":Ljavassist/compiler/ast/Declarator;
    :cond_0
    new-instance v4, Ljavassist/compiler/SyntaxError;

    iget-object v5, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v4, v5}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v4

    .line 500
    :cond_1
    new-instance v4, Ljavassist/compiler/SyntaxError;

    iget-object v5, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v4, v5}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v4

    .line 495
    .end local v2    # "tbl2":Ljavassist/compiler/SymbolTable;
    .end local v3    # "d":Ljavassist/compiler/ast/Declarator;
    :cond_2
    new-instance v2, Ljavassist/compiler/SyntaxError;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v2, v3}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v2

    .line 509
    :cond_3
    const/4 v2, 0x0

    .line 510
    .local v2, "finallyBlock":Ljavassist/compiler/ast/Stmnt;
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v3

    const/16 v4, 0x13c

    if-ne v3, v4, :cond_4

    .line 511
    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->get()I

    .line 512
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v2

    .line 515
    :cond_4
    const/16 v3, 0x157

    invoke-static {v3, v0, v1, v2}, Ljavassist/compiler/ast/Stmnt;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v3

    return-object v3
.end method

.method private parseUnaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 5
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 875
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 904
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parsePostfix(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0

    .line 902
    :sswitch_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseCast(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    return-object v0

    .line 882
    :sswitch_1
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 883
    .local v0, "t":I
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 884
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    .line 885
    .local v1, "t2":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 893
    :pswitch_0
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    .line 894
    new-instance v2, Ljavassist/compiler/ast/DoubleConst;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->getDouble()D

    move-result-wide v3

    neg-double v3, v3

    invoke-direct {v2, v3, v4, v1}, Ljavassist/compiler/ast/DoubleConst;-><init>(DI)V

    return-object v2

    .line 889
    :pswitch_1
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    .line 890
    new-instance v2, Ljavassist/compiler/ast/IntConst;

    iget-object v3, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v3}, Ljavassist/compiler/Lex;->getLong()J

    move-result-wide v3

    neg-long v3, v3

    invoke-direct {v2, v3, v4, v1}, Ljavassist/compiler/ast/IntConst;-><init>(JI)V

    return-object v2

    .line 900
    .end local v1    # "t2":I
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseUnaryExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/compiler/ast/Expr;->make(ILjavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Expr;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x28 -> :sswitch_0
        0x2b -> :sswitch_1
        0x2d -> :sswitch_1
        0x7e -> :sswitch_1
        0x16a -> :sswitch_1
        0x16b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parseWhile(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 4
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->get()I

    move-result v0

    .line 342
    .local v0, "t":I
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseParExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    .line 343
    .local v1, "expr":Ljavassist/compiler/ast/ASTree;
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v2

    .line 344
    .local v2, "body":Ljavassist/compiler/ast/Stmnt;
    new-instance v3, Ljavassist/compiler/ast/Stmnt;

    invoke-direct {v3, v0, v1, v2}, Ljavassist/compiler/ast/Stmnt;-><init>(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTList;)V

    return-object v3
.end method

.method private toClassName(Ljavassist/compiler/ast/ASTree;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljavassist/compiler/ast/ASTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1202
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1203
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-direct {p0, p1, v0}, Ljavassist/compiler/Parser;->toClassName(Ljavassist/compiler/ast/ASTree;Ljava/lang/StringBuffer;)V

    .line 1204
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private toClassName(Ljavassist/compiler/ast/ASTree;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "name"    # Ljavassist/compiler/ast/ASTree;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 1210
    instance-of v0, p1, Ljavassist/compiler/ast/Symbol;

    if-eqz v0, :cond_0

    .line 1211
    move-object v0, p1

    check-cast v0, Ljavassist/compiler/ast/Symbol;

    invoke-virtual {v0}, Ljavassist/compiler/ast/Symbol;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1212
    return-void

    .line 1214
    :cond_0
    instance-of v0, p1, Ljavassist/compiler/ast/Expr;

    if-eqz v0, :cond_1

    .line 1215
    move-object v0, p1

    check-cast v0, Ljavassist/compiler/ast/Expr;

    .line 1216
    .local v0, "expr":Ljavassist/compiler/ast/Expr;
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->getOperator()I

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    .line 1217
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand1()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Ljavassist/compiler/Parser;->toClassName(Ljavassist/compiler/ast/ASTree;Ljava/lang/StringBuffer;)V

    .line 1218
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1219
    invoke-virtual {v0}, Ljavassist/compiler/ast/Expr;->oprand2()Ljavassist/compiler/ast/ASTree;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Ljavassist/compiler/Parser;->toClassName(Ljavassist/compiler/ast/ASTree;Ljava/lang/StringBuffer;)V

    .line 1220
    return-void

    .line 1224
    .end local v0    # "expr":Ljavassist/compiler/ast/Expr;
    :cond_1
    new-instance v0, Ljavassist/compiler/CompileError;

    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const-string v2, "bad static member access"

    invoke-direct {v0, v2, v1}, Ljavassist/compiler/CompileError;-><init>(Ljava/lang/String;Ljavassist/compiler/Lex;)V

    throw v0
.end method


# virtual methods
.method public hasMore()Z
    .locals 1

    .line 50
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;
    .locals 4
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 719
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseConditionalExpr(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v0

    .line 720
    .local v0, "left":Ljavassist/compiler/ast/ASTree;
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    invoke-static {v1}, Ljavassist/compiler/Parser;->isAssignOp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 721
    return-object v0

    .line 723
    :cond_0
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    move-result v1

    .line 724
    .local v1, "t":I
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseExpression(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTree;

    move-result-object v2

    .line 725
    .local v2, "right":Ljavassist/compiler/ast/ASTree;
    invoke-static {v1, v0, v2}, Ljavassist/compiler/ast/AssignExpr;->makeAssign(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/AssignExpr;

    move-result-object v3

    return-object v3
.end method

.method public parseMember(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;
    .locals 2
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseMember1(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 57
    .local v0, "mem":Ljavassist/compiler/ast/ASTList;
    instance-of v1, v0, Ljavassist/compiler/ast/MethodDecl;

    if-eqz v1, :cond_0

    .line 58
    move-object v1, v0

    check-cast v1, Ljavassist/compiler/ast/MethodDecl;

    invoke-virtual {p0, p1, v1}, Ljavassist/compiler/Parser;->parseMethod2(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/MethodDecl;)Ljavassist/compiler/ast/MethodDecl;

    move-result-object v1

    return-object v1

    .line 59
    :cond_0
    return-object v0
.end method

.method public parseMember1(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/ASTList;
    .locals 7
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljavassist/compiler/Parser;->parseMemberMods()Ljavassist/compiler/ast/ASTList;

    move-result-object v0

    .line 67
    .local v0, "mods":Ljavassist/compiler/ast/ASTList;
    const/4 v1, 0x0

    .line 68
    .local v1, "isConstructor":Z
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v2

    const/16 v3, 0x28

    const/16 v4, 0x190

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 69
    new-instance v2, Ljavassist/compiler/ast/Declarator;

    const/16 v5, 0x158

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Ljavassist/compiler/ast/Declarator;-><init>(II)V

    .line 70
    .local v2, "d":Ljavassist/compiler/ast/Declarator;
    const/4 v1, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "d":Ljavassist/compiler/ast/Declarator;
    :cond_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseFormalType(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Declarator;

    move-result-object v2

    .line 75
    .restart local v2    # "d":Ljavassist/compiler/ast/Declarator;
    :goto_0
    iget-object v5, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v5}, Ljavassist/compiler/Lex;->get()I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 79
    if-eqz v1, :cond_1

    .line 80
    const-string v4, "<init>"

    .local v4, "name":Ljava/lang/String;
    goto :goto_1

    .line 82
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v4}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v4

    .line 84
    .restart local v4    # "name":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v5, v4}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljavassist/compiler/ast/Declarator;->setVariable(Ljavassist/compiler/ast/Symbol;)V

    .line 85
    if-nez v1, :cond_3

    iget-object v5, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v5}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v5

    if-ne v5, v3, :cond_2

    goto :goto_2

    .line 87
    :cond_2
    invoke-direct {p0, p1, v0, v2}, Ljavassist/compiler/Parser;->parseField(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/FieldDecl;

    move-result-object v3

    return-object v3

    .line 86
    :cond_3
    :goto_2
    invoke-direct {p0, p1, v1, v0, v2}, Ljavassist/compiler/Parser;->parseMethod1(Ljavassist/compiler/SymbolTable;ZLjavassist/compiler/ast/ASTList;Ljavassist/compiler/ast/Declarator;)Ljavassist/compiler/ast/MethodDecl;

    move-result-object v3

    return-object v3

    .line 76
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljavassist/compiler/SyntaxError;

    iget-object v4, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-direct {v3, v4}, Ljavassist/compiler/SyntaxError;-><init>(Ljavassist/compiler/Lex;)V

    throw v3
.end method

.method public parseMethod2(Ljavassist/compiler/SymbolTable;Ljavassist/compiler/ast/MethodDecl;)Ljavassist/compiler/ast/MethodDecl;
    .locals 3
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .param p2, "md"    # Ljavassist/compiler/ast/MethodDecl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "body":Ljavassist/compiler/ast/Stmnt;
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    .line 170
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    goto :goto_0

    .line 172
    :cond_0
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v0

    .line 173
    if-nez v0, :cond_1

    .line 174
    new-instance v1, Ljavassist/compiler/ast/Stmnt;

    const/16 v2, 0x42

    invoke-direct {v1, v2}, Ljavassist/compiler/ast/Stmnt;-><init>(I)V

    move-object v0, v1

    .line 177
    :cond_1
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Ljavassist/compiler/ast/MethodDecl;->sublist(I)Ljavassist/compiler/ast/ASTList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/compiler/ast/ASTList;->setHead(Ljavassist/compiler/ast/ASTree;)V

    .line 178
    return-object p2
.end method

.method public parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;
    .locals 5
    .param p1, "tbl"    # Ljavassist/compiler/SymbolTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/compiler/CompileError;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v0}, Ljavassist/compiler/Lex;->lookAhead()I

    move-result v0

    .line 260
    .local v0, "t":I
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    .line 261
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseBlock(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    return-object v1

    .line 262
    :cond_0
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    .line 263
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 264
    new-instance v1, Ljavassist/compiler/ast/Stmnt;

    const/16 v2, 0x42

    invoke-direct {v1, v2}, Ljavassist/compiler/ast/Stmnt;-><init>(I)V

    return-object v1

    .line 266
    :cond_1
    const/16 v1, 0x190

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavassist/compiler/Lex;->lookAhead(I)I

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_2

    .line 267
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->get()I

    .line 268
    iget-object v1, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v1}, Ljavassist/compiler/Lex;->getString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "label":Ljava/lang/String;
    iget-object v2, p0, Ljavassist/compiler/Parser;->lex:Ljavassist/compiler/Lex;

    invoke-virtual {v2}, Ljavassist/compiler/Lex;->get()I

    .line 270
    const/16 v2, 0x4c

    new-instance v3, Ljavassist/compiler/ast/Symbol;

    invoke-direct {v3, v1}, Ljavassist/compiler/ast/Symbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljavassist/compiler/Parser;->parseStatement(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljavassist/compiler/ast/Stmnt;->make(ILjavassist/compiler/ast/ASTree;Ljavassist/compiler/ast/ASTree;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v2

    return-object v2

    .line 272
    .end local v1    # "label":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x140

    if-ne v0, v1, :cond_3

    .line 273
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseIf(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    return-object v1

    .line 274
    :cond_3
    const/16 v1, 0x15a

    if-ne v0, v1, :cond_4

    .line 275
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseWhile(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    return-object v1

    .line 276
    :cond_4
    const/16 v1, 0x137

    if-ne v0, v1, :cond_5

    .line 277
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseDo(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    return-object v1

    .line 278
    :cond_5
    const/16 v1, 0x13e

    if-ne v0, v1, :cond_6

    .line 279
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseFor(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    return-object v1

    .line 280
    :cond_6
    const/16 v1, 0x157

    if-ne v0, v1, :cond_7

    .line 281
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseTry(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    return-object v1

    .line 282
    :cond_7
    const/16 v1, 0x151

    if-ne v0, v1, :cond_8

    .line 283
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseSwitch(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    return-object v1

    .line 284
    :cond_8
    const/16 v1, 0x152

    if-ne v0, v1, :cond_9

    .line 285
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseSynchronized(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    return-object v1

    .line 286
    :cond_9
    const/16 v1, 0x14d

    if-ne v0, v1, :cond_a

    .line 287
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseReturn(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    return-object v1

    .line 288
    :cond_a
    const/16 v1, 0x154

    if-ne v0, v1, :cond_b

    .line 289
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseThrow(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    return-object v1

    .line 290
    :cond_b
    const/16 v1, 0x12e

    if-ne v0, v1, :cond_c

    .line 291
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseBreak(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    return-object v1

    .line 292
    :cond_c
    const/16 v1, 0x135

    if-ne v0, v1, :cond_d

    .line 293
    invoke-direct {p0, p1}, Ljavassist/compiler/Parser;->parseContinue(Ljavassist/compiler/SymbolTable;)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    return-object v1

    .line 295
    :cond_d
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ljavassist/compiler/Parser;->parseDeclarationOrExpression(Ljavassist/compiler/SymbolTable;Z)Ljavassist/compiler/ast/Stmnt;

    move-result-object v1

    return-object v1
.end method
