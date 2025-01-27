.class Lbsh/ClassGeneratorImpl$ClassNodeFilter;
.super Ljava/lang/Object;
.source "ClassGeneratorImpl.java"

# interfaces
.implements Lbsh/BSHBlock$NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/ClassGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassNodeFilter"
.end annotation


# static fields
.field public static CLASSCLASSES:Lbsh/ClassGeneratorImpl$ClassNodeFilter; = null

.field public static final CLASSES:I = 0x2

.field public static CLASSINSTANCE:Lbsh/ClassGeneratorImpl$ClassNodeFilter; = null

.field public static CLASSSTATIC:Lbsh/ClassGeneratorImpl$ClassNodeFilter; = null

.field public static final INSTANCE:I = 0x1

.field public static final STATIC:I


# instance fields
.field context:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 302
    new-instance v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;-><init>(I)V

    sput-object v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSSTATIC:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    .line 304
    new-instance v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;-><init>(I)V

    sput-object v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSINSTANCE:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    .line 306
    new-instance v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;-><init>(I)V

    sput-object v0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->CLASSCLASSES:Lbsh/ClassGeneratorImpl$ClassNodeFilter;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "context"    # I

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->context:I

    return-void
.end method


# virtual methods
.method isStatic(Lbsh/SimpleNode;)Z
    .locals 4
    .param p1, "node"    # Lbsh/SimpleNode;

    .line 334
    instance-of v0, p1, Lbsh/BSHTypedVariableDeclaration;

    const/4 v1, 0x1

    const-string/jumbo v2, "static"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 335
    move-object v0, p1

    check-cast v0, Lbsh/BSHTypedVariableDeclaration;

    iget-object v0, v0, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lbsh/BSHTypedVariableDeclaration;

    iget-object v0, v0, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;

    .line 337
    invoke-virtual {v0, v2}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 339
    :cond_1
    instance-of v0, p1, Lbsh/BSHMethodDeclaration;

    if-eqz v0, :cond_3

    .line 340
    move-object v0, p1

    check-cast v0, Lbsh/BSHMethodDeclaration;

    iget-object v0, v0, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lbsh/BSHMethodDeclaration;

    iget-object v0, v0, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    .line 342
    invoke-virtual {v0, v2}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1

    .line 345
    :cond_3
    instance-of v0, p1, Lbsh/BSHBlock;

    if-eqz v0, :cond_4

    .line 346
    move-object v0, p1

    check-cast v0, Lbsh/BSHBlock;

    iget-boolean v0, v0, Lbsh/BSHBlock;->isStatic:Z

    return v0

    .line 348
    :cond_4
    return v3
.end method

.method public isVisible(Lbsh/SimpleNode;)Z
    .locals 2
    .param p1, "node"    # Lbsh/SimpleNode;

    .line 315
    iget v0, p0, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->context:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 316
    instance-of v0, p1, Lbsh/BSHClassDeclaration;

    return v0

    .line 319
    :cond_0
    instance-of v1, p1, Lbsh/BSHClassDeclaration;

    if-eqz v1, :cond_1

    .line 320
    const/4 v0, 0x0

    return v0

    .line 322
    :cond_1
    if-nez v0, :cond_2

    .line 323
    invoke-virtual {p0, p1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->isStatic(Lbsh/SimpleNode;)Z

    move-result v0

    return v0

    .line 325
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 326
    invoke-virtual {p0, p1}, Lbsh/ClassGeneratorImpl$ClassNodeFilter;->isStatic(Lbsh/SimpleNode;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 329
    :cond_3
    return v1
.end method
