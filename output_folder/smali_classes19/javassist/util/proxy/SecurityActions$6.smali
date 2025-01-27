.class Ljavassist/util/proxy/SecurityActions$6;
.super Ljava/lang/Object;
.source "SecurityActions.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavassist/util/proxy/SecurityActions;->setAccessible(Ljava/lang/reflect/AccessibleObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic val$accessible:Z

.field final synthetic val$ao:Ljava/lang/reflect/AccessibleObject;


# direct methods
.method constructor <init>(Ljava/lang/reflect/AccessibleObject;Z)V
    .locals 0

    .line 161
    iput-object p1, p0, Ljavassist/util/proxy/SecurityActions$6;->val$ao:Ljava/lang/reflect/AccessibleObject;

    iput-boolean p2, p0, Ljavassist/util/proxy/SecurityActions$6;->val$accessible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 161
    invoke-virtual {p0}, Ljavassist/util/proxy/SecurityActions$6;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2

    .line 163
    iget-object v0, p0, Ljavassist/util/proxy/SecurityActions$6;->val$ao:Ljava/lang/reflect/AccessibleObject;

    iget-boolean v1, p0, Ljavassist/util/proxy/SecurityActions$6;->val$accessible:Z

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method
