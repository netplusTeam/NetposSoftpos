.class public abstract Ljavassist/CtMember;
.super Ljava/lang/Object;
.source "CtMember.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/CtMember$Cache;
    }
.end annotation


# instance fields
.field protected declaringClass:Ljavassist/CtClass;

.field next:Ljavassist/CtMember;


# direct methods
.method protected constructor <init>(Ljavassist/CtClass;)V
    .locals 1
    .param p1, "clazz"    # Ljavassist/CtClass;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Ljavassist/CtMember;->declaringClass:Ljavassist/CtClass;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    .line 144
    return-void
.end method


# virtual methods
.method protected abstract extendToString(Ljava/lang/StringBuffer;)V
.end method

.method public abstract getAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
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
.end method

.method public abstract getAnnotations()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract getAttribute(Ljava/lang/String;)[B
.end method

.method public abstract getAvailableAnnotations()[Ljava/lang/Object;
.end method

.method public getDeclaringClass()Ljavassist/CtClass;
    .locals 1

    .line 180
    iget-object v0, p0, Ljavassist/CtMember;->declaringClass:Ljavassist/CtClass;

    return-object v0
.end method

.method public abstract getGenericSignature()Ljava/lang/String;
.end method

.method public abstract getModifiers()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSignature()Ljava/lang/String;
.end method

.method public hasAnnotation(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 231
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/CtMember;->hasAnnotation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract hasAnnotation(Ljava/lang/String;)Z
.end method

.method nameReplaced()V
    .locals 0

    .line 154
    return-void
.end method

.method final next()Ljavassist/CtMember;
    .locals 1

    .line 146
    iget-object v0, p0, Ljavassist/CtMember;->next:Ljavassist/CtMember;

    return-object v0
.end method

.method public abstract setAttribute(Ljava/lang/String;[B)V
.end method

.method public abstract setGenericSignature(Ljava/lang/String;)V
.end method

.method public abstract setModifiers(I)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {p0}, Ljavassist/CtMember;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljavassist/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {p0, v0}, Ljavassist/CtMember;->extendToString(Ljava/lang/StringBuffer;)V

    .line 164
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public visibleFrom(Ljavassist/CtClass;)Z
    .locals 5
    .param p1, "clazz"    # Ljavassist/CtClass;

    .line 186
    invoke-virtual {p0}, Ljavassist/CtMember;->getModifiers()I

    move-result v0

    .line 187
    .local v0, "mod":I
    invoke-static {v0}, Ljavassist/Modifier;->isPublic(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 188
    return v2

    .line 189
    :cond_0
    invoke-static {v0}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Ljavassist/CtMember;->declaringClass:Ljavassist/CtClass;

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    .line 192
    :cond_2
    iget-object v1, p0, Ljavassist/CtMember;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {v1}, Ljavassist/CtClass;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "declName":Ljava/lang/String;
    invoke-virtual {p1}, Ljavassist/CtClass;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "fromName":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 196
    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    .local v2, "visible":Z
    :goto_1
    goto :goto_2

    .line 198
    .end local v2    # "visible":Z
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 200
    .restart local v2    # "visible":Z
    :goto_2
    if-nez v2, :cond_5

    invoke-static {v0}, Ljavassist/Modifier;->isProtected(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 201
    iget-object v3, p0, Ljavassist/CtMember;->declaringClass:Ljavassist/CtClass;

    invoke-virtual {p1, v3}, Ljavassist/CtClass;->subclassOf(Ljavassist/CtClass;)Z

    move-result v3

    return v3

    .line 203
    :cond_5
    return v2
.end method
