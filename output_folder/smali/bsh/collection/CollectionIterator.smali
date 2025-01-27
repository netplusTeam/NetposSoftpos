.class public Lbsh/collection/CollectionIterator;
.super Ljava/lang/Object;
.source "CollectionIterator.java"

# interfaces
.implements Lbsh/BshIterator;


# instance fields
.field private iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "iterateOverMe"    # Ljava/lang/Object;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lbsh/collection/CollectionIterator;->createIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lbsh/collection/CollectionIterator;->iterator:Ljava/util/Iterator;

    .line 66
    return-void
.end method


# virtual methods
.method protected createIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3
    .param p1, "iterateOverMe"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 86
    if-eqz p1, :cond_3

    .line 90
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_0

    .line 91
    move-object v0, p1

    check-cast v0, Ljava/util/Iterator;

    return-object v0

    .line 93
    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 94
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    invoke-virtual {p0, p1}, Lbsh/collection/CollectionIterator;->getIteratorForIterable(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 97
    .local v0, "it":Ljava/util/Iterator;
    if-eqz v0, :cond_2

    .line 98
    return-object v0

    .line 100
    :cond_2
    new-instance v1, Lbsh/CollectionManager$BasicBshIterator;

    invoke-direct {v1, p1}, Lbsh/CollectionManager$BasicBshIterator;-><init>(Ljava/lang/Object;)V

    .line 103
    .local v1, "bbi":Lbsh/CollectionManager$BasicBshIterator;
    new-instance v2, Lbsh/collection/CollectionIterator$1;

    invoke-direct {v2, p0, v1}, Lbsh/collection/CollectionIterator$1;-><init>(Lbsh/collection/CollectionIterator;Lbsh/CollectionManager$BasicBshIterator;)V

    return-object v2

    .line 87
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "bbi":Lbsh/CollectionManager$BasicBshIterator;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Object arguments passed to the CollectionIterator constructor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getIteratorForIterable(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 6
    .param p1, "iterateOverMe"    # Ljava/lang/Object;

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "it":Ljava/util/Iterator;
    :try_start_0
    const-string v1, "java.lang.Iterable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 126
    .local v1, "c":Ljava/lang/Class;
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 129
    :try_start_1
    const-string v2, "iterator"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 130
    .local v2, "m":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    .line 135
    .end local v2    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 131
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Lbsh/InterpreterError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected problem calling \"iterator()\" on instance of java.lang.Iterable."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    .end local v0    # "it":Ljava/util/Iterator;
    .end local p1    # "iterateOverMe":Ljava/lang/Object;
    throw v3
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    .end local v1    # "c":Ljava/lang/Class;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "it":Ljava/util/Iterator;
    .restart local p1    # "iterateOverMe":Ljava/lang/Object;
    :cond_0
    :goto_0
    goto :goto_1

    .line 137
    :catch_1
    move-exception v1

    .line 140
    :goto_1
    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lbsh/collection/CollectionIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 149
    iget-object v0, p0, Lbsh/collection/CollectionIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
