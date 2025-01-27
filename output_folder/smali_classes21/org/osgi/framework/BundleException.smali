.class public Lorg/osgi/framework/BundleException;
.super Ljava/lang/Exception;
.source "BundleException.java"


# static fields
.field public static final ACTIVATOR_ERROR:I = 0x5

.field public static final DUPLICATE_BUNDLE_ERROR:I = 0x9

.field public static final INVALID_OPERATION:I = 0x2

.field public static final MANIFEST_ERROR:I = 0x3

.field public static final NATIVECODE_ERROR:I = 0x8

.field public static final READ_ERROR:I = 0xb

.field public static final REJECTED_BY_HOOK:I = 0xc

.field public static final RESOLVE_ERROR:I = 0x4

.field public static final SECURITY_ERROR:I = 0x6

.field public static final START_TRANSIENT_ERROR:I = 0xa

.field public static final STATECHANGE_ERROR:I = 0x7

.field public static final UNSPECIFIED:I = 0x0

.field public static final UNSUPPORTED_OPERATION:I = 0x1

.field static final serialVersionUID:J = 0x318f141cfa61f2f1L


# instance fields
.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 181
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 182
    iput p2, p0, Lorg/osgi/framework/BundleException;->type:I

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 169
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    iput p2, p0, Lorg/osgi/framework/BundleException;->type:I

    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/osgi/framework/BundleException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 148
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 208
    invoke-super {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getNestedException()Ljava/lang/Throwable;
    .locals 1

    .line 197
    invoke-virtual {p0}, Lorg/osgi/framework/BundleException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 235
    iget v0, p0, Lorg/osgi/framework/BundleException;->type:I

    return v0
.end method

.method public initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 224
    invoke-super {p0, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
