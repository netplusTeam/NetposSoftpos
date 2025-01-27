.class public Ljavassist/bytecode/SignatureAttribute$BaseType;
.super Ljavassist/bytecode/SignatureAttribute$Type;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseType"
.end annotation


# instance fields
.field descriptor:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .param p1, "c"    # C

    .line 615
    invoke-direct {p0}, Ljavassist/bytecode/SignatureAttribute$Type;-><init>()V

    iput-char p1, p0, Ljavassist/bytecode/SignatureAttribute$BaseType;->descriptor:C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "typeName"    # Ljava/lang/String;

    .line 623
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Ljavassist/bytecode/SignatureAttribute$BaseType;-><init>(C)V

    .line 624
    return-void
.end method


# virtual methods
.method encode(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 651
    iget-char v0, p0, Ljavassist/bytecode/SignatureAttribute$BaseType;->descriptor:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 652
    return-void
.end method

.method public getCtlass()Ljavassist/CtClass;
    .locals 1

    .line 638
    iget-char v0, p0, Ljavassist/bytecode/SignatureAttribute$BaseType;->descriptor:C

    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toPrimitiveClass(C)Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()C
    .locals 1

    .line 631
    iget-char v0, p0, Ljavassist/bytecode/SignatureAttribute$BaseType;->descriptor:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 646
    iget-char v0, p0, Ljavassist/bytecode/SignatureAttribute$BaseType;->descriptor:C

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
