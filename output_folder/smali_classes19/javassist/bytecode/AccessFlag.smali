.class public Ljavassist/bytecode/AccessFlag;
.super Ljava/lang/Object;
.source "AccessFlag.java"


# static fields
.field public static final ABSTRACT:I = 0x400

.field public static final ANNOTATION:I = 0x2000

.field public static final BRIDGE:I = 0x40

.field public static final ENUM:I = 0x4000

.field public static final FINAL:I = 0x10

.field public static final INTERFACE:I = 0x200

.field public static final MANDATED:I = 0x8000

.field public static final MODULE:I = 0x8000

.field public static final NATIVE:I = 0x100

.field public static final PRIVATE:I = 0x2

.field public static final PROTECTED:I = 0x4

.field public static final PUBLIC:I = 0x1

.field public static final STATIC:I = 0x8

.field public static final STRICT:I = 0x800

.field public static final SUPER:I = 0x20

.field public static final SYNCHRONIZED:I = 0x20

.field public static final SYNTHETIC:I = 0x1000

.field public static final TRANSIENT:I = 0x80

.field public static final VARARGS:I = 0x80

.field public static final VOLATILE:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(II)I
    .locals 1
    .param p0, "accflags"    # I
    .param p1, "clearBit"    # I

    .line 113
    not-int v0, p1

    and-int/2addr v0, p0

    return v0
.end method

.method public static isPackage(I)Z
    .locals 1
    .param p0, "accflags"    # I

    .line 106
    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPrivate(I)Z
    .locals 1
    .param p0, "accflags"    # I

    .line 98
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isProtected(I)Z
    .locals 1
    .param p0, "accflags"    # I

    .line 91
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPublic(I)Z
    .locals 1
    .param p0, "accflags"    # I

    .line 84
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static of(I)I
    .locals 0
    .param p0, "modifier"    # I

    .line 123
    return p0
.end method

.method public static setPackage(I)I
    .locals 1
    .param p0, "accflags"    # I

    .line 77
    and-int/lit8 v0, p0, -0x8

    return v0
.end method

.method public static setPrivate(I)I
    .locals 1
    .param p0, "accflags"    # I

    .line 70
    and-int/lit8 v0, p0, -0x6

    or-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static setProtected(I)I
    .locals 1
    .param p0, "accflags"    # I

    .line 62
    and-int/lit8 v0, p0, -0x4

    or-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static setPublic(I)I
    .locals 1
    .param p0, "accflags"    # I

    .line 54
    and-int/lit8 v0, p0, -0x7

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static toModifier(I)I
    .locals 0
    .param p0, "accflags"    # I

    .line 133
    return p0
.end method
