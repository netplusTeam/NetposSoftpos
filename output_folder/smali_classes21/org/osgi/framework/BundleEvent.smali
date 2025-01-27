.class public Lorg/osgi/framework/BundleEvent;
.super Ljava/util/EventObject;
.source "BundleEvent.java"


# static fields
.field public static final INSTALLED:I = 0x1

.field public static final LAZY_ACTIVATION:I = 0x200

.field public static final RESOLVED:I = 0x20

.field public static final STARTED:I = 0x2

.field public static final STARTING:I = 0x80

.field public static final STOPPED:I = 0x4

.field public static final STOPPING:I = 0x100

.field public static final UNINSTALLED:I = 0x10

.field public static final UNRESOLVED:I = 0x40

.field public static final UPDATED:I = 0x8

.field static final serialVersionUID:J = 0x38a1593f58305becL


# instance fields
.field private final bundle:Lorg/osgi/framework/Bundle;

.field private final origin:Lorg/osgi/framework/Bundle;

.field private final type:I


# direct methods
.method public constructor <init>(ILorg/osgi/framework/Bundle;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "bundle"    # Lorg/osgi/framework/Bundle;

    .line 185
    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 186
    iput-object p2, p0, Lorg/osgi/framework/BundleEvent;->bundle:Lorg/osgi/framework/Bundle;

    .line 187
    iput p1, p0, Lorg/osgi/framework/BundleEvent;->type:I

    .line 188
    iput-object p2, p0, Lorg/osgi/framework/BundleEvent;->origin:Lorg/osgi/framework/Bundle;

    .line 189
    return-void
.end method

.method public constructor <init>(ILorg/osgi/framework/Bundle;Lorg/osgi/framework/Bundle;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "bundle"    # Lorg/osgi/framework/Bundle;
    .param p3, "origin"    # Lorg/osgi/framework/Bundle;

    .line 168
    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 169
    if-eqz p3, :cond_0

    .line 172
    iput-object p2, p0, Lorg/osgi/framework/BundleEvent;->bundle:Lorg/osgi/framework/Bundle;

    .line 173
    iput p1, p0, Lorg/osgi/framework/BundleEvent;->type:I

    .line 174
    iput-object p3, p0, Lorg/osgi/framework/BundleEvent;->origin:Lorg/osgi/framework/Bundle;

    .line 175
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBundle()Lorg/osgi/framework/Bundle;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/osgi/framework/BundleEvent;->bundle:Lorg/osgi/framework/Bundle;

    return-object v0
.end method

.method public getOrigin()Lorg/osgi/framework/Bundle;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/osgi/framework/BundleEvent;->origin:Lorg/osgi/framework/Bundle;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 219
    iget v0, p0, Lorg/osgi/framework/BundleEvent;->type:I

    return v0
.end method
