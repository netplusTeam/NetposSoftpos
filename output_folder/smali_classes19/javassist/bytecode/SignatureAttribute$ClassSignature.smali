.class public Ljavassist/bytecode/SignatureAttribute$ClassSignature;
.super Ljava/lang/Object;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassSignature"
.end annotation


# instance fields
.field interfaces:[Ljavassist/bytecode/SignatureAttribute$ClassType;

.field params:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

.field superClass:Ljavassist/bytecode/SignatureAttribute$ClassType;


# direct methods
.method public constructor <init>([Ljavassist/bytecode/SignatureAttribute$TypeParameter;)V
    .locals 1
    .param p1, "p"    # [Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljavassist/bytecode/SignatureAttribute$ClassSignature;-><init>([Ljavassist/bytecode/SignatureAttribute$TypeParameter;Ljavassist/bytecode/SignatureAttribute$ClassType;[Ljavassist/bytecode/SignatureAttribute$ClassType;)V

    .line 205
    return-void
.end method

.method public constructor <init>([Ljavassist/bytecode/SignatureAttribute$TypeParameter;Ljavassist/bytecode/SignatureAttribute$ClassType;[Ljavassist/bytecode/SignatureAttribute$ClassType;)V
    .locals 2
    .param p1, "params"    # [Ljavassist/bytecode/SignatureAttribute$TypeParameter;
    .param p2, "superClass"    # Ljavassist/bytecode/SignatureAttribute$ClassType;
    .param p3, "interfaces"    # [Ljavassist/bytecode/SignatureAttribute$ClassType;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array v1, v0, [Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->params:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    .line 194
    if-nez p2, :cond_1

    sget-object v1, Ljavassist/bytecode/SignatureAttribute$ClassType;->OBJECT:Ljavassist/bytecode/SignatureAttribute$ClassType;

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    iput-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->superClass:Ljavassist/bytecode/SignatureAttribute$ClassType;

    .line 195
    if-nez p3, :cond_2

    new-array v0, v0, [Ljavassist/bytecode/SignatureAttribute$ClassType;

    goto :goto_2

    :cond_2
    move-object v0, p3

    :goto_2
    iput-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->interfaces:[Ljavassist/bytecode/SignatureAttribute$ClassType;

    .line 196
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 4

    .line 249
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 250
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->params:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 251
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->params:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 253
    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->encode(Ljava/lang/StringBuffer;)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 258
    :cond_1
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->superClass:Ljavassist/bytecode/SignatureAttribute$ClassType;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/SignatureAttribute$ClassType;->encode(Ljava/lang/StringBuffer;)V

    .line 259
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->interfaces:[Ljavassist/bytecode/SignatureAttribute$ClassType;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 260
    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljavassist/bytecode/SignatureAttribute$ClassType;->encode(Ljava/lang/StringBuffer;)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 262
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInterfaces()[Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 1

    .line 226
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->interfaces:[Ljavassist/bytecode/SignatureAttribute$ClassType;

    return-object v0
.end method

.method public getParameters()[Ljavassist/bytecode/SignatureAttribute$TypeParameter;
    .locals 1

    .line 213
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->params:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    return-object v0
.end method

.method public getSuperClass()Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 1

    .line 219
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->superClass:Ljavassist/bytecode/SignatureAttribute$ClassType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 233
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 235
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->params:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    invoke-static {v0, v1}, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->toString(Ljava/lang/StringBuffer;[Ljavassist/bytecode/SignatureAttribute$TypeParameter;)V

    .line 236
    const-string v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->superClass:Ljavassist/bytecode/SignatureAttribute$ClassType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 237
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->interfaces:[Ljavassist/bytecode/SignatureAttribute$ClassType;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 238
    const-string v1, " implements "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$ClassSignature;->interfaces:[Ljavassist/bytecode/SignatureAttribute$ClassType;

    invoke-static {v0, v1}, Ljavassist/bytecode/SignatureAttribute$Type;->toString(Ljava/lang/StringBuffer;[Ljavassist/bytecode/SignatureAttribute$Type;)V

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
