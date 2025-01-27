.class public Lbsh/reflect/ReflectManagerImpl;
.super Lbsh/ReflectManager;
.source "ReflectManagerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lbsh/ReflectManager;-><init>()V

    return-void
.end method


# virtual methods
.method public setAccessible(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 52
    instance-of v0, p1, Ljava/lang/reflect/AccessibleObject;

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/AccessibleObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 54
    return v1

    .line 56
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
