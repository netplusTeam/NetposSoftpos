.class public final Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;
.super Ljava/lang/Object;
.source "Validate.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isFalse(Z)V
    .locals 2
    .param p0, "val"    # Z

    .line 95
    if-nez p0, :cond_0

    .line 97
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isFalse(ZLjava/lang/String;)V
    .locals 1
    .param p0, "val"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .line 105
    if-nez p0, :cond_0

    .line 107
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isTrue(Z)V
    .locals 2
    .param p0, "val"    # Z

    .line 76
    if-eqz p0, :cond_0

    .line 78
    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must be true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isTrue(ZLjava/lang/String;)V
    .locals 1
    .param p0, "val"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .line 86
    if-eqz p0, :cond_0

    .line 88
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static noNullElements([Ljava/lang/Object;)V
    .locals 1
    .param p0, "objects"    # [Ljava/lang/Object;

    .line 114
    const-string v0, "Array must not contain any null objects"

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->noNullElements([Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public static noNullElements([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "objects"    # [Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;

    .line 123
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 124
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 123
    .end local v2    # "obj":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public static notEmpty(Ljava/lang/String;)V
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .line 133
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 143
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notNull(Ljava/lang/Object;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 57
    if-eqz p0, :cond_0

    .line 59
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static notNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;

    .line 67
    if-eqz p0, :cond_0

    .line 69
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
