.class public Ljavassist/runtime/Desc;
.super Ljava/lang/Object;
.source "Desc.java"


# static fields
.field private static final USE_CONTEXT_CLASS_LOADER_LOCALLY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static useContextClassLoader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Ljavassist/runtime/Desc;->useContextClassLoader:Z

    .line 37
    new-instance v0, Ljavassist/runtime/Desc$1;

    invoke-direct {v0}, Ljavassist/runtime/Desc$1;-><init>()V

    sput-object v0, Ljavassist/runtime/Desc;->USE_CONTEXT_CLASS_LOADER_LOCALLY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClassObject(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 70
    sget-boolean v0, Ljavassist/runtime/Desc;->useContextClassLoader:Z

    if-nez v0, :cond_1

    sget-object v0, Ljavassist/runtime/Desc;->USE_CONTEXT_CLASS_LOADER_LOCALLY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 71
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static getClassType(Ljava/lang/String;III)[Ljava/lang/Class;
    .locals 6
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "descLen"    # I
    .param p2, "start"    # I
    .param p3, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 163
    move v0, p2

    .line 164
    .local v0, "end":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_2

    .line 168
    const/16 v1, 0x3b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 169
    if-ltz v0, :cond_1

    goto :goto_1

    .line 170
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "bad descriptor"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_2
    :goto_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3

    .line 175
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "cname":Ljava/lang/String;
    goto :goto_2

    .line 177
    .end local v1    # "cname":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 179
    .restart local v1    # "cname":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, p1, v2, v3}, Ljavassist/runtime/Desc;->getType(Ljava/lang/String;III)[Ljava/lang/Class;

    move-result-object v2

    .line 181
    .local v2, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v3, 0x2f

    const/16 v4, 0x2e

    :try_start_0
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavassist/runtime/Desc;->getClassObject(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, p3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    nop

    .line 188
    return-object v2

    .line 183
    :catch_0
    move-exception v3

    .line 185
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getClazz(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 81
    :try_start_0
    invoke-static {p0}, Ljavassist/runtime/Desc;->getClassObject(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$class: internal error, could not find class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (Desc.useContextClassLoader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Ljavassist/runtime/Desc;->useContextClassLoader:Z

    .line 87
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getParams(Ljava/lang/String;)[Ljava/lang/Class;
    .locals 3
    .param p0, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Ljavassist/runtime/Desc;->getType(Ljava/lang/String;III)[Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "$sig: internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p0, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Ljavassist/runtime/Desc;->getType(Ljava/lang/String;III)[Ljava/lang/Class;

    move-result-object v0

    .line 108
    .local v0, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 111
    aget-object v1, v0, v1

    return-object v1

    .line 109
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "$type: internal error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getType(Ljava/lang/String;III)[Ljava/lang/Class;
    .locals 4
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "descLen"    # I
    .param p2, "start"    # I
    .param p3, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 117
    if-lt p2, p1, :cond_0

    .line 118
    new-array v0, p3, [Ljava/lang/Class;

    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 121
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 153
    new-array v1, p3, [Ljava/lang/Class;

    return-object v1

    .line 123
    :sswitch_0
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 124
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 147
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :sswitch_1
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 148
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 132
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :sswitch_2
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 133
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 151
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :sswitch_3
    invoke-static {p0, p1, p2, p3}, Ljavassist/runtime/Desc;->getClassType(Ljava/lang/String;III)[Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 138
    :sswitch_4
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 139
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 135
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :sswitch_5
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 136
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 141
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :sswitch_6
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 142
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 144
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :sswitch_7
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 145
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 126
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :sswitch_8
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 127
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 129
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :sswitch_9
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 130
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 156
    :goto_0
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, p1, v2, v3}, Ljavassist/runtime/Desc;->getType(Ljava/lang/String;III)[Ljava/lang/Class;

    move-result-object v2

    .line 157
    .local v2, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    aput-object v1, v2, p3

    .line 158
    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_9
        0x43 -> :sswitch_8
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_5
        0x4a -> :sswitch_4
        0x4c -> :sswitch_3
        0x53 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x5b -> :sswitch_3
    .end sparse-switch
.end method

.method public static resetUseContextClassLoaderLocally()V
    .locals 1

    .line 64
    sget-object v0, Ljavassist/runtime/Desc;->USE_CONTEXT_CLASS_LOADER_LOCALLY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 65
    return-void
.end method

.method public static setUseContextClassLoaderLocally()V
    .locals 2

    .line 52
    sget-object v0, Ljavassist/runtime/Desc;->USE_CONTEXT_CLASS_LOADER_LOCALLY:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 53
    return-void
.end method
