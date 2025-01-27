.class Ljavassist/util/proxy/SecurityActions$8;
.super Ljava/lang/Object;
.source "SecurityActions.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/util/proxy/SecurityActions;->getSunMiscUnsafeAnonymously()Ljavassist/util/proxy/SecurityActions$TheUnsafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljavassist/util/proxy/SecurityActions$TheUnsafe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 197
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

    .line 197
    invoke-virtual {p0}, Ljavassist/util/proxy/SecurityActions$8;->run()Ljavassist/util/proxy/SecurityActions$TheUnsafe;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljavassist/util/proxy/SecurityActions$TheUnsafe;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 200
    const-string v0, "sun.misc.Unsafe"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 201
    .local v0, "unsafe":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "theUnsafe"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 202
    .local v1, "theUnsafe":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 203
    new-instance v2, Ljavassist/util/proxy/SecurityActions$TheUnsafe;

    sget-object v3, Ljavassist/util/proxy/SecurityActions;->stack:Ljavassist/util/proxy/SecurityActions;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Ljavassist/util/proxy/SecurityActions$TheUnsafe;-><init>(Ljavassist/util/proxy/SecurityActions;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 204
    .local v2, "usf":Ljavassist/util/proxy/SecurityActions$TheUnsafe;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 205
    invoke-static {v2}, Ljavassist/util/proxy/SecurityActions;->disableWarning(Ljavassist/util/proxy/SecurityActions$TheUnsafe;)V

    .line 206
    return-object v2
.end method
