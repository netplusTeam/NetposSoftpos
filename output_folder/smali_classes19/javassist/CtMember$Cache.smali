.class Ljavassist/CtMember$Cache;
.super Ljavassist/CtMember;
.source "CtMember.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtMember;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cache"
.end annotation


# instance fields
.field private consTail:Ljavassist/CtMember;

.field private fieldTail:Ljavassist/CtMember;

.field private methodTail:Ljavassist/CtMember;


# direct methods
.method constructor <init>(Ljavassist/CtClassType;)V
    .locals 0
    .param p1, "decl"    # Ljavassist/CtClassType;

    .line 66
    invoke-direct {p0, p1}, Ljavassist/CtMember;-><init>(Ljavassist/CtClass;)V

    .line 67
    iput-object p0, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    .line 68
    iput-object p0, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    .line 69
    iput-object p0, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    .line 70
    iput-object p0, p0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 71
    return-void
.end method

.method static count(Ljavassist/CtMember;Ljavassist/CtMember;)I
    .locals 1
    .param p0, "head"    # Ljavassist/CtMember;
    .param p1, "tail"    # Ljavassist/CtMember;

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "n":I
    :goto_0
    if-eq p0, p1, :cond_0

    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 113
    iget-object p0, p0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    goto :goto_0

    .line 116
    :cond_0
    return v0
.end method


# virtual methods
.method addConstructor(Ljavassist/CtMember;)V
    .locals 2
    .param p1, "cons"    # Ljavassist/CtMember;

    .line 95
    iget-object v0, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    iget-object v0, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    iput-object v0, p1, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 96
    iget-object v0, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    iput-object p1, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 97
    iget-object v0, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    iget-object v1, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    if-ne v0, v1, :cond_0

    .line 98
    iput-object p1, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    .line 100
    :cond_0
    iput-object p1, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    .line 101
    return-void
.end method

.method addField(Ljavassist/CtMember;)V
    .locals 1
    .param p1, "field"    # Ljavassist/CtMember;

    .line 104
    iput-object p0, p1, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 105
    iget-object v0, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    iput-object p1, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 106
    iput-object p1, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    .line 107
    return-void
.end method

.method addMethod(Ljavassist/CtMember;)V
    .locals 2
    .param p1, "method"    # Ljavassist/CtMember;

    .line 81
    iget-object v0, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    iget-object v0, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    iput-object v0, p1, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 82
    iget-object v0, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    iput-object p1, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 83
    iget-object v0, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    iget-object v1, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    if-ne v0, v1, :cond_0

    .line 84
    iput-object p1, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    .line 85
    iget-object v1, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    if-ne v0, v1, :cond_0

    .line 86
    iput-object p1, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    .line 89
    :cond_0
    iput-object p1, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    .line 90
    return-void
.end method

.method consHead()Ljavassist/CtMember;
    .locals 1

    .line 75
    iget-object v0, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    return-object v0
.end method

.method protected extendToString(Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 33
    return-void
.end method

.method fieldHead()Ljavassist/CtMember;
    .locals 1

    .line 77
    iget-object v0, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 38
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAvailableAnnotations()[Ljava/lang/Object;
    .locals 1

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 1

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAnnotation(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clz"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method lastCons()Ljavassist/CtMember;
    .locals 1

    .line 76
    iget-object v0, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    return-object v0
.end method

.method lastField()Ljavassist/CtMember;
    .locals 1

    .line 78
    iget-object v0, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    return-object v0
.end method

.method lastMethod()Ljavassist/CtMember;
    .locals 1

    .line 74
    iget-object v0, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    return-object v0
.end method

.method methodHead()Ljavassist/CtMember;
    .locals 0

    .line 73
    return-object p0
.end method

.method remove(Ljavassist/CtMember;)V
    .locals 3
    .param p1, "mem"    # Ljavassist/CtMember;

    .line 120
    move-object v0, p0

    .line 122
    .local v0, "m":Ljavassist/CtMember;
    :goto_0
    iget-object v1, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    move-object v2, v1

    .local v2, "node":Ljavassist/CtMember;
    if-eq v1, p0, :cond_3

    .line 123
    if-ne v2, p1, :cond_2

    .line 124
    iget-object v1, v2, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    iput-object v1, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 125
    iget-object v1, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    if-ne v2, v1, :cond_0

    .line 126
    iput-object v0, p0, Ljavassist/CtMember$Cache;->methodTail:Ljavassist/CtMember;

    .line 128
    :cond_0
    iget-object v1, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    if-ne v2, v1, :cond_1

    .line 129
    iput-object v0, p0, Ljavassist/CtMember$Cache;->consTail:Ljavassist/CtMember;

    .line 131
    :cond_1
    iget-object v1, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    if-ne v2, v1, :cond_3

    .line 132
    iput-object v0, p0, Ljavassist/CtMember$Cache;->fieldTail:Ljavassist/CtMember;

    goto :goto_1

    .line 136
    :cond_2
    iget-object v0, v0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    goto :goto_0

    .line 138
    :cond_3
    :goto_1
    return-void
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 53
    return-void
.end method

.method public setGenericSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "sig"    # Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setModifiers(I)V
    .locals 0
    .param p1, "mod"    # I

    .line 55
    return-void
.end method
