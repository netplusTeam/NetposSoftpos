.class Lorg/simpleframework/xml/core/Comparer;
.super Ljava/lang/Object;
.source "Comparer.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "name"


# instance fields
.field private final ignore:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    const-string v0, "name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Comparer;-><init>([Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "ignore"    # [Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method private isIgnore(Ljava/lang/reflect/Method;)Z
    .locals 6
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 106
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lorg/simpleframework/xml/core/Comparer;->ignore:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 110
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    const/4 v5, 0x1

    return v5

    .line 109
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z
    .locals 11
    .param p1, "left"    # Ljava/lang/annotation/Annotation;
    .param p2, "right"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 77
    .local v0, "type":Ljava/lang/Class;
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    .line 78
    .local v1, "expect":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 80
    .local v2, "list":[Ljava/lang/reflect/Method;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 81
    move-object v3, v2

    .local v3, "arr$":[Ljava/lang/reflect/Method;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 82
    .local v7, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v7}, Lorg/simpleframework/xml/core/Comparer;->isIgnore(Ljava/lang/reflect/Method;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 83
    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 84
    .local v8, "value":Ljava/lang/Object;
    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v7, p2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 86
    .local v9, "other":Ljava/lang/Object;
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 87
    return v4

    .line 81
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "other":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 91
    .end local v3    # "arr$":[Ljava/lang/reflect/Method;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 93
    :cond_2
    return v4
.end method
