.class public Ljavassist/bytecode/SignatureAttribute$ArrayType;
.super Ljavassist/bytecode/SignatureAttribute$ObjectType;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayType"
.end annotation


# instance fields
.field componentType:Ljavassist/bytecode/SignatureAttribute$Type;

.field dim:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/SignatureAttribute$Type;)V
    .locals 0
    .param p1, "d"    # I
    .param p2, "comp"    # Ljavassist/bytecode/SignatureAttribute$Type;

    .line 849
    invoke-direct {p0}, Ljavassist/bytecode/SignatureAttribute$ObjectType;-><init>()V

    .line 850
    iput p1, p0, Ljavassist/bytecode/SignatureAttribute$ArrayType;->dim:I

    .line 851
    iput-object p2, p0, Ljavassist/bytecode/SignatureAttribute$ArrayType;->componentType:Ljavassist/bytecode/SignatureAttribute$Type;

    .line 852
    return-void
.end method


# virtual methods
.method encode(Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 880
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljavassist/bytecode/SignatureAttribute$ArrayType;->dim:I

    if-ge v0, v1, :cond_0

    .line 881
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 880
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 883
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ArrayType;->componentType:Ljavassist/bytecode/SignatureAttribute$Type;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/SignatureAttribute$Type;->encode(Ljava/lang/StringBuffer;)V

    .line 884
    return-void
.end method

.method public getComponentType()Ljavassist/bytecode/SignatureAttribute$Type;
    .locals 1

    .line 863
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ArrayType;->componentType:Ljavassist/bytecode/SignatureAttribute$Type;

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .line 857
    iget v0, p0, Ljavassist/bytecode/SignatureAttribute$ArrayType;->dim:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 871
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ArrayType;->componentType:Ljavassist/bytecode/SignatureAttribute$Type;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 872
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljavassist/bytecode/SignatureAttribute$ArrayType;->dim:I

    if-ge v1, v2, :cond_0

    .line 873
    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 872
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
