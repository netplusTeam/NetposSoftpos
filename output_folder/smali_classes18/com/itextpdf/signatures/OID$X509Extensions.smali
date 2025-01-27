.class public final Lcom/itextpdf/signatures/OID$X509Extensions;
.super Ljava/lang/Object;
.source "OID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/signatures/OID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "X509Extensions"
.end annotation


# static fields
.field public static final AUTHORITY_INFO_ACCESS:Ljava/lang/String; = "1.3.6.1.5.5.7.1.1"

.field public static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String; = "2.5.29.35"

.field public static final BASIC_CONSTRAINTS:Ljava/lang/String; = "2.5.29.19"

.field public static final CERTIFICATE_POLICIES:Ljava/lang/String; = "2.5.29.32"

.field public static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String; = "2.5.29.31"

.field public static final EXTENDED_KEY_USAGE:Ljava/lang/String; = "2.5.29.37"

.field public static final FRESHEST_CRL:Ljava/lang/String; = "2.5.29.46"

.field public static final ID_KP_TIMESTAMPING:Ljava/lang/String; = "1.3.6.1.5.5.7.3.8"

.field public static final ID_PKIX_OCSP_NOCHECK:Ljava/lang/String; = "1.3.6.1.5.5.7.48.1.5"

.field public static final INHIBIT_ANY_POLICY:Ljava/lang/String; = "2.5.29.54"

.field public static final ISSUER_ALTERNATIVE_NAME:Ljava/lang/String; = "2.5.29.18"

.field public static final KEY_USAGE:Ljava/lang/String; = "2.5.29.15"

.field public static final NAME_CONSTRAINTS:Ljava/lang/String; = "2.5.29.30"

.field public static final POLICY_CONSTRAINTS:Ljava/lang/String; = "2.5.29.36"

.field public static final POLICY_MAPPINGS:Ljava/lang/String; = "2.5.29.33"

.field public static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String; = "2.5.29.17"

.field public static final SUBJECT_DIRECTORY_ATTRIBUTES:Ljava/lang/String; = "2.5.29.9"

.field public static final SUBJECT_INFO_ACCESS:Ljava/lang/String; = "1.3.6.1.5.5.7.1.11"

.field public static final SUBJECT_KEY_IDENTIFIER:Ljava/lang/String; = "2.5.29.14"

.field public static final SUPPORTED_CRITICAL_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 167
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "2.5.29.15"

    const-string v2, "2.5.29.32"

    const-string v3, "2.5.29.33"

    const-string v4, "2.5.29.17"

    const-string v5, "2.5.29.18"

    const-string v6, "2.5.29.19"

    const-string v7, "2.5.29.30"

    const-string v8, "2.5.29.36"

    const-string v9, "2.5.29.37"

    const-string v10, "2.5.29.31"

    const-string v11, "2.5.29.54"

    const-string v12, "1.3.6.1.5.5.7.48.1.5"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/signatures/OID$X509Extensions;->SUPPORTED_CRITICAL_EXTENSIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
