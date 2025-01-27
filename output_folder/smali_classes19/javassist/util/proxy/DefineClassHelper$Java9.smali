.class Ljavassist/util/proxy/DefineClassHelper$Java9;
.super Ljavassist/util/proxy/DefineClassHelper$Helper;
.source "DefineClassHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/util/proxy/DefineClassHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Java9"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;
    }
.end annotation


# instance fields
.field private final getCallerClass:Ljava/lang/reflect/Method;

.field private final stack:Ljava/lang/Object;

.field private final sunMiscUnsafe:Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;


# direct methods
.method constructor <init>()V
    .locals 7

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/util/proxy/DefineClassHelper$Helper;-><init>(Ljavassist/util/proxy/DefineClassHelper$1;)V

    .line 91
    invoke-direct {p0}, Ljavassist/util/proxy/DefineClassHelper$Java9;->getReferencedUnsafe()Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;

    move-result-object v1

    iput-object v1, p0, Ljavassist/util/proxy/DefineClassHelper$Java9;->sunMiscUnsafe:Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;

    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, "stackWalkerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "java.lang.StackWalker"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    .line 100
    :goto_0
    if-eqz v1, :cond_0

    .line 102
    :try_start_1
    const-string v2, "java.lang.StackWalker$Option"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 103
    .local v2, "optionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 105
    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v6

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$Java9;->stack:Ljava/lang/Object;

    .line 106
    const-string v0, "getCallerClass"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$Java9;->getCallerClass:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .end local v2    # "optionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "cannot initialize"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 111
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    iput-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$Java9;->stack:Ljava/lang/Object;

    .line 112
    iput-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$Java9;->getCallerClass:Ljava/lang/reflect/Method;

    .line 114
    :goto_1
    return-void
.end method

.method static synthetic access$100(Ljavassist/util/proxy/DefineClassHelper$Java9;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljavassist/util/proxy/DefineClassHelper$Java9;

    .line 57
    iget-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$Java9;->stack:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Ljavassist/util/proxy/DefineClassHelper$Java9;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Ljavassist/util/proxy/DefineClassHelper$Java9;

    .line 57
    iget-object v0, p0, Ljavassist/util/proxy/DefineClassHelper$Java9;->getCallerClass:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private final getReferencedUnsafe()Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;
    .locals 5

    .line 118
    const-string v0, "cannot initialize"

    :try_start_0
    invoke-static {}, Ljavassist/util/proxy/DefineClassHelper;->access$400()Ljavassist/util/proxy/DefineClassHelper$Helper;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljavassist/util/proxy/DefineClassHelper$Java9;->getCallerClass:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ljavassist/util/proxy/DefineClassHelper$Java9;->stack:Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string v2, "Access denied for caller."

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_1
    :goto_0
    nop

    .line 124
    :try_start_1
    invoke-static {}, Ljavassist/util/proxy/SecurityActions;->getSunMiscUnsafeAnonymously()Ljavassist/util/proxy/SecurityActions$TheUnsafe;

    move-result-object v1

    .line 125
    .local v1, "usf":Ljavassist/util/proxy/SecurityActions$TheUnsafe;
    iget-object v3, v1, Ljavassist/util/proxy/SecurityActions$TheUnsafe;->methods:Ljava/util/Map;

    const-string v4, "defineClass"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 127
    .local v3, "defineClassMethod":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    if-nez v3, :cond_2

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_2
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v4, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    .line 130
    .local v2, "meth":Ljava/lang/invoke/MethodHandle;
    new-instance v4, Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;

    invoke-direct {v4, p0, v1, v2}, Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;-><init>(Ljavassist/util/proxy/DefineClassHelper$Java9;Ljavassist/util/proxy/SecurityActions$TheUnsafe;Ljava/lang/invoke/MethodHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    .line 131
    .end local v1    # "usf":Ljavassist/util/proxy/SecurityActions$TheUnsafe;
    .end local v2    # "meth":Ljava/lang/invoke/MethodHandle;
    .end local v3    # "defineClassMethod":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    :catchall_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 120
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method defineClass(Ljava/lang/String;[BIILjava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p6, "loader"    # Ljava/lang/ClassLoader;
    .param p7, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .local p5, "neighbor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p0

    .line 142
    :try_start_0
    iget-object v0, v1, Ljavassist/util/proxy/DefineClassHelper$Java9;->getCallerClass:Ljava/lang/reflect/Method;

    iget-object v2, v1, Ljavassist/util/proxy/DefineClassHelper$Java9;->stack:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-class v2, Ljavassist/util/proxy/DefineClassHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    .line 146
    nop

    .line 147
    iget-object v3, v1, Ljavassist/util/proxy/DefineClassHelper$Java9;->sunMiscUnsafe:Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v3 .. v9}, Ljavassist/util/proxy/DefineClassHelper$Java9$ReferencedUnsafe;->defineClass(Ljava/lang/String;[BIILjava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v2, "Access denied for caller."

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "b":[B
    .end local p3    # "off":I
    .end local p4    # "len":I
    .end local p5    # "neighbor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p6    # "loader":Ljava/lang/ClassLoader;
    .end local p7    # "protectionDomain":Ljava/security/ProtectionDomain;
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "b":[B
    .restart local p3    # "off":I
    .restart local p4    # "len":I
    .restart local p5    # "neighbor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p6    # "loader":Ljava/lang/ClassLoader;
    .restart local p7    # "protectionDomain":Ljava/security/ProtectionDomain;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "cannot initialize"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
