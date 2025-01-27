.class Ljavassist/util/proxy/SecurityActions$3;
.super Ljava/lang/Object;
.source "SecurityActions.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/util/proxy/SecurityActions;->getMethodHandle(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/invoke/MethodHandle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$params:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    .line 90
    iput-object p1, p0, Ljavassist/util/proxy/SecurityActions$3;->val$clazz:Ljava/lang/Class;

    iput-object p2, p0, Ljavassist/util/proxy/SecurityActions$3;->val$name:Ljava/lang/String;

    iput-object p3, p0, Ljavassist/util/proxy/SecurityActions$3;->val$params:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Ljavassist/util/proxy/SecurityActions$3;->run()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/invoke/MethodHandle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Ljavassist/util/proxy/SecurityActions$3;->val$clazz:Ljava/lang/Class;

    iget-object v1, p0, Ljavassist/util/proxy/SecurityActions$3;->val$name:Ljava/lang/String;

    iget-object v2, p0, Ljavassist/util/proxy/SecurityActions$3;->val$params:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 94
    .local v0, "rmet":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 95
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 96
    .local v1, "meth":Ljava/lang/invoke/MethodHandle;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 97
    return-object v1
.end method
