.class final Lorg/osgi/framework/FrameworkUtil$SetAccessibleAction;
.super Ljava/lang/Object;
.source "FrameworkUtil.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osgi/framework/FrameworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetAccessibleAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessible:Ljava/lang/reflect/AccessibleObject;


# direct methods
.method constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .locals 0
    .param p1, "accessible"    # Ljava/lang/reflect/AccessibleObject;

    .line 1667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1668
    iput-object p1, p0, Lorg/osgi/framework/FrameworkUtil$SetAccessibleAction;->accessible:Ljava/lang/reflect/AccessibleObject;

    .line 1669
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1664
    invoke-virtual {p0}, Lorg/osgi/framework/FrameworkUtil$SetAccessibleAction;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2

    .line 1672
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$SetAccessibleAction;->accessible:Ljava/lang/reflect/AccessibleObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1673
    const/4 v0, 0x0

    return-object v0
.end method
