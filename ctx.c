
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
 typedef signed long long int __int64_t;
 typedef unsigned long long int __uint64_t;
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
 typedef long long int __quad_t;
 typedef unsigned long long int __u_quad_t;
 typedef long long int __intmax_t;
 typedef unsigned long long int __uintmax_t;
 typedef __uint64_t __dev_t;
 typedef unsigned int __uid_t;
 typedef unsigned int __gid_t;
 typedef unsigned long int __ino_t;
 typedef __uint64_t __ino64_t;
 typedef unsigned int __mode_t;
 typedef unsigned int __nlink_t;
 typedef long int __off_t;
 typedef __int64_t __off64_t;
 typedef int __pid_t;
 typedef struct { int __val[2]; } __fsid_t;
 typedef long int __clock_t;
 typedef unsigned long int __rlim_t;
 typedef __uint64_t __rlim64_t;
 typedef unsigned int __id_t;
 typedef long int __time_t;
 typedef unsigned int __useconds_t;
 typedef long int __suseconds_t;
 typedef __int64_t __suseconds64_t;
 typedef int __daddr_t;
 typedef int __key_t;
 typedef int __clockid_t;
 typedef void * __timer_t;
 typedef long int __blksize_t;
 typedef long int __blkcnt_t;
 typedef __int64_t __blkcnt64_t;
 typedef unsigned long int __fsblkcnt_t;
 typedef __uint64_t __fsblkcnt64_t;
 typedef unsigned long int __fsfilcnt_t;
 typedef __uint64_t __fsfilcnt64_t;
 typedef int __fsword_t;
 typedef int __ssize_t;
 typedef long int __syscall_slong_t;
 typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
 typedef int __intptr_t;
 typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
 typedef __int64_t __time64_t;
typedef float _Float32;
typedef double _Float64;
typedef double _Float32x;
typedef long double _Float64x;
typedef long double float_t;
typedef long double double_t;
enum
  {
    FP_INT_UPWARD =
      0,
    FP_INT_DOWNWARD =
      1,
    FP_INT_TOWARDZERO =
      2,
    FP_INT_TONEARESTFROMZERO =
      3,
    FP_INT_TONEAREST =
      4,
  };
extern int __fpclassify (double __value)
     ;
extern int __signbit (double __value)
     ;
extern int __isinf (double __value)
  ;
extern int __finite (double __value)
  ;
extern int __isnan (double __value)
  ;
extern int __iseqsig (double __x, double __y) ;
extern int __issignaling (double __value)
     ;
 extern double acos (double __x) ; extern double __acos (double __x) ;
 extern double asin (double __x) ; extern double __asin (double __x) ;
 extern double atan (double __x) ; extern double __atan (double __x) ;
 extern double atan2 (double __y, double __x) ; extern double __atan2 (double __y, double __x) ;
 extern double cos (double __x) ; extern double __cos (double __x) ;
 extern double sin (double __x) ; extern double __sin (double __x) ;
 extern double tan (double __x) ; extern double __tan (double __x) ;
extern double acospi (double __x) ; extern double __acospi (double __x) ;
extern double asinpi (double __x) ; extern double __asinpi (double __x) ;
extern double atanpi (double __x) ; extern double __atanpi (double __x) ;
extern double atan2pi (double __y, double __x) ; extern double __atan2pi (double __y, double __x) ;
 extern double cospi (double __x) ; extern double __cospi (double __x) ;
 extern double sinpi (double __x) ; extern double __sinpi (double __x) ;
 extern double tanpi (double __x) ; extern double __tanpi (double __x) ;
 extern double cosh (double __x) ; extern double __cosh (double __x) ;
 extern double sinh (double __x) ; extern double __sinh (double __x) ;
 extern double tanh (double __x) ; extern double __tanh (double __x) ;
 extern double acosh (double __x) ; extern double __acosh (double __x) ;
 extern double asinh (double __x) ; extern double __asinh (double __x) ;
 extern double atanh (double __x) ; extern double __atanh (double __x) ;
 extern double exp (double __x) ; extern double __exp (double __x) ;
extern double frexp (double __x, int *__exponent) ; extern double __frexp (double __x, int *__exponent) ;
extern double ldexp (double __x, int __exponent) ; extern double __ldexp (double __x, int __exponent) ;
 extern double log (double __x) ; extern double __log (double __x) ;
 extern double log10 (double __x) ; extern double __log10 (double __x) ;
extern double modf (double __x, double *__iptr) ; extern double __modf (double __x, double *__iptr) ;
 extern double exp10 (double __x) ; extern double __exp10 (double __x) ;
extern double exp2m1 (double __x) ; extern double __exp2m1 (double __x) ;
extern double exp10m1 (double __x) ; extern double __exp10m1 (double __x) ;
extern double log2p1 (double __x) ; extern double __log2p1 (double __x) ;
extern double log10p1 (double __x) ; extern double __log10p1 (double __x) ;
 extern double logp1 (double __x) ; extern double __logp1 (double __x) ;
 extern double expm1 (double __x) ; extern double __expm1 (double __x) ;
 extern double log1p (double __x) ; extern double __log1p (double __x) ;
extern double logb (double __x) ; extern double __logb (double __x) ;
 extern double exp2 (double __x) ; extern double __exp2 (double __x) ;
 extern double log2 (double __x) ; extern double __log2 (double __x) ;
 extern double pow (double __x, double __y) ; extern double __pow (double __x, double __y) ;
extern double sqrt (double __x) ; extern double __sqrt (double __x) ;
 extern double hypot (double __x, double __y) ; extern double __hypot (double __x, double __y) ;
 extern double cbrt (double __x) ; extern double __cbrt (double __x) ;
extern double ceil (double __x) ;
extern double fabs (double __x) ;
extern double floor (double __x) ;
extern double fmod (double __x, double __y) ; extern double __fmod (double __x, double __y) ;
extern int isinf (double __value)
  ;
extern int finite (double __value)
  ;
extern double drem (double __x, double __y) ; extern double __drem (double __x, double __y) ;
extern double significand (double __x) ; extern double __significand (double __x) ;
extern double copysign (double __x, double __y) ;
extern double nan (const char *__tagb) ; extern double __nan (const char *__tagb) ;
extern int isnan (double __value)
  ;
extern double j0 (double) ; extern double __j0 (double) ;
extern double j1 (double) ; extern double __j1 (double) ;
extern double jn (int, double) ; extern double __jn (int, double) ;
extern double y0 (double) ; extern double __y0 (double) ;
extern double y1 (double) ; extern double __y1 (double) ;
extern double yn (int, double) ; extern double __yn (int, double) ;
 extern double erf (double) ; extern double __erf (double) ;
 extern double erfc (double) ; extern double __erfc (double) ;
extern double lgamma (double) ; extern double __lgamma (double) ;
extern double tgamma (double) ; extern double __tgamma (double) ;
extern double gamma (double) ; extern double __gamma (double) ;
extern double lgamma_r (double, int *__signgamp) ; extern double __lgamma_r (double, int *__signgamp) ;
extern double rint (double __x) ; extern double __rint (double __x) ;
extern double nextafter (double __x, double __y) ; extern double __nextafter (double __x, double __y) ;
extern double nexttoward (double __x, long double __y) ; extern double __nexttoward (double __x, long double __y) ;
extern double nextdown (double __x) ; extern double __nextdown (double __x) ;
extern double nextup (double __x) ; extern double __nextup (double __x) ;
extern double remainder (double __x, double __y) ; extern double __remainder (double __x, double __y) ;
extern double scalbn (double __x, int __n) ; extern double __scalbn (double __x, int __n) ;
extern int ilogb (double __x) ; extern int __ilogb (double __x) ;
extern long int llogb (double __x) ; extern long int __llogb (double __x) ;
extern double scalbln (double __x, long int __n) ; extern double __scalbln (double __x, long int __n) ;
extern double nearbyint (double __x) ; extern double __nearbyint (double __x) ;
extern double round (double __x) ;
extern double trunc (double __x) ;
extern double remquo (double __x, double __y, int *__quo) ; extern double __remquo (double __x, double __y, int *__quo) ;
extern long int lrint (double __x) ; extern long int __lrint (double __x) ;

extern long long int llrint (double __x) ; extern long long int __llrint (double __x) ;
extern long int lround (double __x) ; extern long int __lround (double __x) ;

extern long long int llround (double __x) ; extern long long int __llround (double __x) ;
extern double fdim (double __x, double __y) ; extern double __fdim (double __x, double __y) ;
extern double fmax (double __x, double __y) ;
extern double fmin (double __x, double __y) ;
extern double fma (double __x, double __y, double __z) ; extern double __fma (double __x, double __y, double __z) ;
extern double roundeven (double __x) ;
extern __intmax_t fromfp (double __x, int __round, unsigned int __width) ; extern __intmax_t __fromfp (double __x, int __round, unsigned int __width) ;
extern __uintmax_t ufromfp (double __x, int __round, unsigned int __width) ; extern __uintmax_t __ufromfp (double __x, int __round, unsigned int __width) ;
extern __intmax_t fromfpx (double __x, int __round, unsigned int __width) ; extern __intmax_t __fromfpx (double __x, int __round, unsigned int __width) ;
extern __uintmax_t ufromfpx (double __x, int __round, unsigned int __width) ; extern __uintmax_t __ufromfpx (double __x, int __round, unsigned int __width) ;
extern int canonicalize (double *__cx, const double *__x) ;
extern double fmaximum (double __x, double __y) ;
extern double fminimum (double __x, double __y) ;
extern double fmaximum_num (double __x, double __y) ;
extern double fminimum_num (double __x, double __y) ;
extern double fmaximum_mag (double __x, double __y) ;
extern double fminimum_mag (double __x, double __y) ;
extern double fmaximum_mag_num (double __x, double __y) ;
extern double fminimum_mag_num (double __x, double __y) ;
extern double scalb (double __x, double __n) ; extern double __scalb (double __x, double __n) ;
extern int __fpclassifyf (float __value)
     ;
extern int __signbitf (float __value)
     ;
extern int __isinff (float __value)
  ;
extern int __finitef (float __value)
  ;
extern int __isnanf (float __value)
  ;
extern int __iseqsigf (float __x, float __y) ;
extern int __issignalingf (float __value)
     ;
 extern float acosf (float __x) ; extern float __acosf (float __x) ;
 extern float asinf (float __x) ; extern float __asinf (float __x) ;
 extern float atanf (float __x) ; extern float __atanf (float __x) ;
 extern float atan2f (float __y, float __x) ; extern float __atan2f (float __y, float __x) ;
 extern float cosf (float __x) ; extern float __cosf (float __x) ;
 extern float sinf (float __x) ; extern float __sinf (float __x) ;
 extern float tanf (float __x) ; extern float __tanf (float __x) ;
extern float acospif (float __x) ; extern float __acospif (float __x) ;
extern float asinpif (float __x) ; extern float __asinpif (float __x) ;
extern float atanpif (float __x) ; extern float __atanpif (float __x) ;
extern float atan2pif (float __y, float __x) ; extern float __atan2pif (float __y, float __x) ;
 extern float cospif (float __x) ; extern float __cospif (float __x) ;
 extern float sinpif (float __x) ; extern float __sinpif (float __x) ;
 extern float tanpif (float __x) ; extern float __tanpif (float __x) ;
 extern float coshf (float __x) ; extern float __coshf (float __x) ;
 extern float sinhf (float __x) ; extern float __sinhf (float __x) ;
 extern float tanhf (float __x) ; extern float __tanhf (float __x) ;
 extern float acoshf (float __x) ; extern float __acoshf (float __x) ;
 extern float asinhf (float __x) ; extern float __asinhf (float __x) ;
 extern float atanhf (float __x) ; extern float __atanhf (float __x) ;
 extern float expf (float __x) ; extern float __expf (float __x) ;
extern float frexpf (float __x, int *__exponent) ; extern float __frexpf (float __x, int *__exponent) ;
extern float ldexpf (float __x, int __exponent) ; extern float __ldexpf (float __x, int __exponent) ;
 extern float logf (float __x) ; extern float __logf (float __x) ;
 extern float log10f (float __x) ; extern float __log10f (float __x) ;
extern float modff (float __x, float *__iptr) ; extern float __modff (float __x, float *__iptr) ;
 extern float exp10f (float __x) ; extern float __exp10f (float __x) ;
extern float exp2m1f (float __x) ; extern float __exp2m1f (float __x) ;
extern float exp10m1f (float __x) ; extern float __exp10m1f (float __x) ;
extern float log2p1f (float __x) ; extern float __log2p1f (float __x) ;
extern float log10p1f (float __x) ; extern float __log10p1f (float __x) ;
 extern float logp1f (float __x) ; extern float __logp1f (float __x) ;
 extern float expm1f (float __x) ; extern float __expm1f (float __x) ;
 extern float log1pf (float __x) ; extern float __log1pf (float __x) ;
extern float logbf (float __x) ; extern float __logbf (float __x) ;
 extern float exp2f (float __x) ; extern float __exp2f (float __x) ;
 extern float log2f (float __x) ; extern float __log2f (float __x) ;
 extern float powf (float __x, float __y) ; extern float __powf (float __x, float __y) ;
extern float sqrtf (float __x) ; extern float __sqrtf (float __x) ;
 extern float hypotf (float __x, float __y) ; extern float __hypotf (float __x, float __y) ;
 extern float cbrtf (float __x) ; extern float __cbrtf (float __x) ;
extern float ceilf (float __x) ;
extern float fabsf (float __x) ;
extern float floorf (float __x) ;
extern float fmodf (float __x, float __y) ; extern float __fmodf (float __x, float __y) ;
extern int isinff (float __value)
  ;
extern int finitef (float __value)
  ;
extern float dremf (float __x, float __y) ; extern float __dremf (float __x, float __y) ;
extern float significandf (float __x) ; extern float __significandf (float __x) ;
extern float copysignf (float __x, float __y) ;
extern float nanf (const char *__tagb) ; extern float __nanf (const char *__tagb) ;
extern int isnanf (float __value)
  ;
extern float j0f (float) ; extern float __j0f (float) ;
extern float j1f (float) ; extern float __j1f (float) ;
extern float jnf (int, float) ; extern float __jnf (int, float) ;
extern float y0f (float) ; extern float __y0f (float) ;
extern float y1f (float) ; extern float __y1f (float) ;
extern float ynf (int, float) ; extern float __ynf (int, float) ;
 extern float erff (float) ; extern float __erff (float) ;
 extern float erfcf (float) ; extern float __erfcf (float) ;
extern float lgammaf (float) ; extern float __lgammaf (float) ;
extern float tgammaf (float) ; extern float __tgammaf (float) ;
extern float gammaf (float) ; extern float __gammaf (float) ;
extern float lgammaf_r (float, int *__signgamp) ; extern float __lgammaf_r (float, int *__signgamp) ;
extern float rintf (float __x) ; extern float __rintf (float __x) ;
extern float nextafterf (float __x, float __y) ; extern float __nextafterf (float __x, float __y) ;
extern float nexttowardf (float __x, long double __y) ; extern float __nexttowardf (float __x, long double __y) ;
extern float nextdownf (float __x) ; extern float __nextdownf (float __x) ;
extern float nextupf (float __x) ; extern float __nextupf (float __x) ;
extern float remainderf (float __x, float __y) ; extern float __remainderf (float __x, float __y) ;
extern float scalbnf (float __x, int __n) ; extern float __scalbnf (float __x, int __n) ;
extern int ilogbf (float __x) ; extern int __ilogbf (float __x) ;
extern long int llogbf (float __x) ; extern long int __llogbf (float __x) ;
extern float scalblnf (float __x, long int __n) ; extern float __scalblnf (float __x, long int __n) ;
extern float nearbyintf (float __x) ; extern float __nearbyintf (float __x) ;
extern float roundf (float __x) ;
extern float truncf (float __x) ;
extern float remquof (float __x, float __y, int *__quo) ; extern float __remquof (float __x, float __y, int *__quo) ;
extern long int lrintf (float __x) ; extern long int __lrintf (float __x) ;

extern long long int llrintf (float __x) ; extern long long int __llrintf (float __x) ;
extern long int lroundf (float __x) ; extern long int __lroundf (float __x) ;

extern long long int llroundf (float __x) ; extern long long int __llroundf (float __x) ;
extern float fdimf (float __x, float __y) ; extern float __fdimf (float __x, float __y) ;
extern float fmaxf (float __x, float __y) ;
extern float fminf (float __x, float __y) ;
extern float fmaf (float __x, float __y, float __z) ; extern float __fmaf (float __x, float __y, float __z) ;
extern float roundevenf (float __x) ;
extern __intmax_t fromfpf (float __x, int __round, unsigned int __width) ; extern __intmax_t __fromfpf (float __x, int __round, unsigned int __width) ;
extern __uintmax_t ufromfpf (float __x, int __round, unsigned int __width) ; extern __uintmax_t __ufromfpf (float __x, int __round, unsigned int __width) ;
extern __intmax_t fromfpxf (float __x, int __round, unsigned int __width) ; extern __intmax_t __fromfpxf (float __x, int __round, unsigned int __width) ;
extern __uintmax_t ufromfpxf (float __x, int __round, unsigned int __width) ; extern __uintmax_t __ufromfpxf (float __x, int __round, unsigned int __width) ;
extern int canonicalizef (float *__cx, const float *__x) ;
extern float fmaximumf (float __x, float __y) ;
extern float fminimumf (float __x, float __y) ;
extern float fmaximum_numf (float __x, float __y) ;
extern float fminimum_numf (float __x, float __y) ;
extern float fmaximum_magf (float __x, float __y) ;
extern float fminimum_magf (float __x, float __y) ;
extern float fmaximum_mag_numf (float __x, float __y) ;
extern float fminimum_mag_numf (float __x, float __y) ;
extern float scalbf (float __x, float __n) ; extern float __scalbf (float __x, float __n) ;
extern int __fpclassifyl (long double __value)
     ;
extern int __signbitl (long double __value)
     ;
extern int __isinfl (long double __value)
  ;
extern int __finitel (long double __value)
  ;
extern int __isnanl (long double __value)
  ;
extern int __iseqsigl (long double __x, long double __y) ;
extern int __issignalingl (long double __value)
     ;
 extern long double acosl (long double __x) ; extern long double __acosl (long double __x) ;
 extern long double asinl (long double __x) ; extern long double __asinl (long double __x) ;
 extern long double atanl (long double __x) ; extern long double __atanl (long double __x) ;
 extern long double atan2l (long double __y, long double __x) ; extern long double __atan2l (long double __y, long double __x) ;
 extern long double cosl (long double __x) ; extern long double __cosl (long double __x) ;
 extern long double sinl (long double __x) ; extern long double __sinl (long double __x) ;
 extern long double tanl (long double __x) ; extern long double __tanl (long double __x) ;
extern long double acospil (long double __x) ; extern long double __acospil (long double __x) ;
extern long double asinpil (long double __x) ; extern long double __asinpil (long double __x) ;
extern long double atanpil (long double __x) ; extern long double __atanpil (long double __x) ;
extern long double atan2pil (long double __y, long double __x) ; extern long double __atan2pil (long double __y, long double __x) ;
 extern long double cospil (long double __x) ; extern long double __cospil (long double __x) ;
 extern long double sinpil (long double __x) ; extern long double __sinpil (long double __x) ;
 extern long double tanpil (long double __x) ; extern long double __tanpil (long double __x) ;
 extern long double coshl (long double __x) ; extern long double __coshl (long double __x) ;
 extern long double sinhl (long double __x) ; extern long double __sinhl (long double __x) ;
 extern long double tanhl (long double __x) ; extern long double __tanhl (long double __x) ;
 extern long double acoshl (long double __x) ; extern long double __acoshl (long double __x) ;
 extern long double asinhl (long double __x) ; extern long double __asinhl (long double __x) ;
 extern long double atanhl (long double __x) ; extern long double __atanhl (long double __x) ;
 extern long double expl (long double __x) ; extern long double __expl (long double __x) ;
extern long double frexpl (long double __x, int *__exponent) ; extern long double __frexpl (long double __x, int *__exponent) ;
extern long double ldexpl (long double __x, int __exponent) ; extern long double __ldexpl (long double __x, int __exponent) ;
 extern long double logl (long double __x) ; extern long double __logl (long double __x) ;
 extern long double log10l (long double __x) ; extern long double __log10l (long double __x) ;
extern long double modfl (long double __x, long double *__iptr) ; extern long double __modfl (long double __x, long double *__iptr) ;
 extern long double exp10l (long double __x) ; extern long double __exp10l (long double __x) ;
extern long double exp2m1l (long double __x) ; extern long double __exp2m1l (long double __x) ;
extern long double exp10m1l (long double __x) ; extern long double __exp10m1l (long double __x) ;
extern long double log2p1l (long double __x) ; extern long double __log2p1l (long double __x) ;
extern long double log10p1l (long double __x) ; extern long double __log10p1l (long double __x) ;
 extern long double logp1l (long double __x) ; extern long double __logp1l (long double __x) ;
 extern long double expm1l (long double __x) ; extern long double __expm1l (long double __x) ;
 extern long double log1pl (long double __x) ; extern long double __log1pl (long double __x) ;
extern long double logbl (long double __x) ; extern long double __logbl (long double __x) ;
 extern long double exp2l (long double __x) ; extern long double __exp2l (long double __x) ;
 extern long double log2l (long double __x) ; extern long double __log2l (long double __x) ;
 extern long double powl (long double __x, long double __y) ; extern long double __powl (long double __x, long double __y) ;
extern long double sqrtl (long double __x) ; extern long double __sqrtl (long double __x) ;
 extern long double hypotl (long double __x, long double __y) ; extern long double __hypotl (long double __x, long double __y) ;
 extern long double cbrtl (long double __x) ; extern long double __cbrtl (long double __x) ;
extern long double ceill (long double __x) ;
extern long double fabsl (long double __x) ;
extern long double floorl (long double __x) ;
extern long double fmodl (long double __x, long double __y) ; extern long double __fmodl (long double __x, long double __y) ;
extern int isinfl (long double __value)
  ;
extern int finitel (long double __value)
  ;
extern long double dreml (long double __x, long double __y) ; extern long double __dreml (long double __x, long double __y) ;
extern long double significandl (long double __x) ; extern long double __significandl (long double __x) ;
extern long double copysignl (long double __x, long double __y) ;
extern long double nanl (const char *__tagb) ; extern long double __nanl (const char *__tagb) ;
extern int isnanl (long double __value)
  ;
extern long double j0l (long double) ; extern long double __j0l (long double) ;
extern long double j1l (long double) ; extern long double __j1l (long double) ;
extern long double jnl (int, long double) ; extern long double __jnl (int, long double) ;
extern long double y0l (long double) ; extern long double __y0l (long double) ;
extern long double y1l (long double) ; extern long double __y1l (long double) ;
extern long double ynl (int, long double) ; extern long double __ynl (int, long double) ;
 extern long double erfl (long double) ; extern long double __erfl (long double) ;
 extern long double erfcl (long double) ; extern long double __erfcl (long double) ;
extern long double lgammal (long double) ; extern long double __lgammal (long double) ;
extern long double tgammal (long double) ; extern long double __tgammal (long double) ;
extern long double gammal (long double) ; extern long double __gammal (long double) ;
extern long double lgammal_r (long double, int *__signgamp) ; extern long double __lgammal_r (long double, int *__signgamp) ;
extern long double rintl (long double __x) ; extern long double __rintl (long double __x) ;
extern long double nextafterl (long double __x, long double __y) ; extern long double __nextafterl (long double __x, long double __y) ;
extern long double nexttowardl (long double __x, long double __y) ; extern long double __nexttowardl (long double __x, long double __y) ;
extern long double nextdownl (long double __x) ; extern long double __nextdownl (long double __x) ;
extern long double nextupl (long double __x) ; extern long double __nextupl (long double __x) ;
extern long double remainderl (long double __x, long double __y) ; extern long double __remainderl (long double __x, long double __y) ;
extern long double scalbnl (long double __x, int __n) ; extern long double __scalbnl (long double __x, int __n) ;
extern int ilogbl (long double __x) ; extern int __ilogbl (long double __x) ;
extern long int llogbl (long double __x) ; extern long int __llogbl (long double __x) ;
extern long double scalblnl (long double __x, long int __n) ; extern long double __scalblnl (long double __x, long int __n) ;
extern long double nearbyintl (long double __x) ; extern long double __nearbyintl (long double __x) ;
extern long double roundl (long double __x) ;
extern long double truncl (long double __x) ;
extern long double remquol (long double __x, long double __y, int *__quo) ; extern long double __remquol (long double __x, long double __y, int *__quo) ;
extern long int lrintl (long double __x) ; extern long int __lrintl (long double __x) ;

extern long long int llrintl (long double __x) ; extern long long int __llrintl (long double __x) ;
extern long int lroundl (long double __x) ; extern long int __lroundl (long double __x) ;

extern long long int llroundl (long double __x) ; extern long long int __llroundl (long double __x) ;
extern long double fdiml (long double __x, long double __y) ; extern long double __fdiml (long double __x, long double __y) ;
extern long double fmaxl (long double __x, long double __y) ;
extern long double fminl (long double __x, long double __y) ;
extern long double fmal (long double __x, long double __y, long double __z) ; extern long double __fmal (long double __x, long double __y, long double __z) ;
extern long double roundevenl (long double __x) ;
extern __intmax_t fromfpl (long double __x, int __round, unsigned int __width) ; extern __intmax_t __fromfpl (long double __x, int __round, unsigned int __width) ;
extern __uintmax_t ufromfpl (long double __x, int __round, unsigned int __width) ; extern __uintmax_t __ufromfpl (long double __x, int __round, unsigned int __width) ;
extern __intmax_t fromfpxl (long double __x, int __round, unsigned int __width) ; extern __intmax_t __fromfpxl (long double __x, int __round, unsigned int __width) ;
extern __uintmax_t ufromfpxl (long double __x, int __round, unsigned int __width) ; extern __uintmax_t __ufromfpxl (long double __x, int __round, unsigned int __width) ;
extern int canonicalizel (long double *__cx, const long double *__x) ;
extern long double fmaximuml (long double __x, long double __y) ;
extern long double fminimuml (long double __x, long double __y) ;
extern long double fmaximum_numl (long double __x, long double __y) ;
extern long double fminimum_numl (long double __x, long double __y) ;
extern long double fmaximum_magl (long double __x, long double __y) ;
extern long double fminimum_magl (long double __x, long double __y) ;
extern long double fmaximum_mag_numl (long double __x, long double __y) ;
extern long double fminimum_mag_numl (long double __x, long double __y) ;
extern long double scalbl (long double __x, long double __n) ; extern long double __scalbl (long double __x, long double __n) ;
extern float fadd (double __x, double __y) ;
extern float fdiv (double __x, double __y) ;
extern float ffma (double __x, double __y, double __z) ;
extern float fmul (double __x, double __y) ;
extern float fsqrt (double __x) ;
extern float fsub (double __x, double __y) ;
extern float faddl (long double __x, long double __y) ;
extern float fdivl (long double __x, long double __y) ;
extern float ffmal (long double __x, long double __y, long double __z) ;
extern float fmull (long double __x, long double __y) ;
extern float fsqrtl (long double __x) ;
extern float fsubl (long double __x, long double __y) ;
extern double daddl (long double __x, long double __y) ;
extern double ddivl (long double __x, long double __y) ;
extern double dfmal (long double __x, long double __y, long double __z) ;
extern double dmull (long double __x, long double __y) ;
extern double dsqrtl (long double __x) ;
extern double dsubl (long double __x, long double __y) ;
extern int signgam;
enum
  {
    FP_NAN =
      0,
    FP_INFINITE =
      1,
    FP_ZERO =
      2,
    FP_SUBNORMAL =
      3,
    FP_NORMAL =
      4
  };
extern int __iscanonicall (long double __x)
     ;

typedef signed char s8;
typedef unsigned char u8;
typedef signed short int s16;
typedef unsigned short int u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long int s64;
typedef unsigned long long int u64;
typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;
typedef float f32;
typedef double f64;
typedef u32 size_t;
typedef s32 ssize_t;
typedef u32 uintptr_t;
typedef s32 intptr_t;
typedef s32 ptrdiff_t;
typedef u32 OSIntMask;
typedef u32 OSHWIntr;
extern OSIntMask osGetIntMask(void);
extern OSIntMask osSetIntMask(OSIntMask);
void osInitialize(void);
u32 osGetCount(void);
uintptr_t osVirtualToPhysical(void *);
extern u32 osDpGetStatus(void);
extern void osDpSetStatus(u32);
extern void osDpGetCounters(u32 *);
extern s32 osDpSetNextBuffer(void *, u64);
typedef s32 OSPri;
typedef s32 OSId;
typedef union
{
    struct {f32 f_odd; f32 f_even;} f;
} __OSfp;
typedef struct
{
              u64 at, v0, v1, a0, a1, a2, a3;
              u64 t0, t1, t2, t3, t4, t5, t6, t7;
              u64 s0, s1, s2, s3, s4, s5, s6, s7;
              u64 t8, t9, gp, sp, s8, ra;
              u64 lo, hi;
              u32 sr, pc, cause, badvaddr, rcp;
              u32 fpcsr;
    __OSfp fp0, fp2, fp4, fp6, fp8, fp10, fp12, fp14;
    __OSfp fp16, fp18, fp20, fp22, fp24, fp26, fp28, fp30;
} __OSThreadContext;
typedef struct
{
    u32 flag;
    u32 count;
    u64 time;
} __OSThreadprofile_s;
typedef struct OSThread_s
{
             struct OSThread_s *next;
             OSPri priority;
             struct OSThread_s **queue;
             struct OSThread_s *tlnext;
             u16 state;
             u16 flags;
             OSId id;
             int fp;
             __OSThreadprofile_s *thprof;
             __OSThreadContext context;
} OSThread;
void osCreateThread(OSThread *thread, OSId id, void (*entry)(void *),
    void *arg, void *sp, OSPri pri);
OSId osGetThreadId(OSThread *thread);
OSPri osGetThreadPri(OSThread *thread);
void osSetThreadPri(OSThread *thread, OSPri pri);
void osStartThread(OSThread *thread);
void osStopThread(OSThread *thread);
typedef u32 OSEvent;
typedef void * OSMesg;
typedef struct OSMesgQueue_s {
 OSThread *mtqueue;
 OSThread *fullqueue;
 s32 validCount;
 s32 first;
 s32 msgCount;
 OSMesg *msg;
} OSMesgQueue;
extern void osCreateMesgQueue(OSMesgQueue *, OSMesg *, s32);
extern s32 osSendMesg(OSMesgQueue *, OSMesg, s32);
extern s32 osJamMesg(OSMesgQueue *, OSMesg, s32);
extern s32 osRecvMesg(OSMesgQueue *, OSMesg *, s32);
extern void osSetEventMesg(OSEvent, OSMesgQueue *, OSMesg);
typedef struct OSTimer_str
{
    struct OSTimer_str *next;
    struct OSTimer_str *prev;
    u64 interval;
    u64 remaining;
    OSMesgQueue *mq;
    OSMesg *msg;
} OSTimer;
typedef u64 OSTime;
OSTime osGetTime(void);
void osSetTime(OSTime time);
u32 osSetTimer(OSTimer *, OSTime, u64, OSMesgQueue *, OSMesg);
typedef struct {
 u16 type;
 u8 status;
 u8 errno;
}OSContStatus;
typedef struct {
 u16 button;
 s8 stick_x;
 s8 stick_y;
 u8 errno;
} OSContPad;
typedef struct {
 void *address;
 u8 databuffer[32];
        u8 addressCrc;
 u8 dataCrc;
 u8 errno;
} OSContRamIo;
typedef struct {
 int status;
 OSMesgQueue *queue;
 int channel;
 u8 id[32];
 u8 label[32];
 int version;
 int dir_size;
 int inode_table;
 int minode_table;
 int dir_table;
 int inode_start_page;
 u8 banks;
 u8 activebank;
} OSPfs;
typedef struct {
 u32 file_size;
   u32 game_code;
   u16 company_code;
   char ext_name[4];
   char game_name[16];
} OSPfsState;
extern s32 osContInit(OSMesgQueue *, u8 *, OSContStatus *);
extern s32 osContReset(OSMesgQueue *, OSContStatus *);
extern s32 osContStartQuery(OSMesgQueue *);
extern s32 osContStartReadData(OSMesgQueue *);
extern s32 osContSetCh(u8);
extern void osContGetQuery(OSContStatus *);
extern void osContGetReadData(OSContPad *);
extern s32 osMotorInit(OSMesgQueue *, OSPfs *, int);
extern s32 osMotorStop(OSPfs *);
extern s32 osMotorStart(OSPfs *);
typedef u32 OSPageMask;
extern void osMapTLB(s32, OSPageMask, void *, u32, u32, s32);
extern void osMapTLBRdb(void);
extern void osUnmapTLB(s32);
extern void osUnmapTLBAll(void);
extern void osSetTLBASID(s32);
typedef struct
{
             u32 type;
             u32 flags;
             u64 *ucode_boot;
             u32 ucode_boot_size;
             u64 *ucode;
             u32 ucode_size;
             u64 *ucode_data;
             u32 ucode_data_size;
             u64 *dram_stack;
             u32 dram_stack_size;
             u64 *output_buff;
             u64 *output_buff_size;
             u64 *data_ptr;
             u32 data_size;
             u64 *yield_data_ptr;
             u32 yield_data_size;
} OSTask_t;
typedef union {
    OSTask_t t;
    long long int force_structure_alignment;
} OSTask;
typedef u32 OSYieldResult;
void osSpTaskLoad(OSTask *task);
void osSpTaskLoad(OSTask *task);
void osSpTaskYield(void);
OSYieldResult osSpTaskYielded(OSTask *task);
extern u64 rspF3DBootStart[], rspF3DBootEnd[];
extern u64 rspF3DStart[], rspF3DEnd[];
extern u64 rspF3DDataStart[], rspF3DDataEnd[];
extern u64 rspAspMainStart[], rspAspMainEnd[];
extern u64 rspAspMainDataStart[], rspAspMainDataEnd[];
extern void osInvalDCache(void *, size_t);
extern void osInvalICache(void *, size_t);
extern void osWritebackDCache(void *, size_t);
extern void osWritebackDCacheAll(void);
typedef struct
{
    u32 ctrl;
    u32 width;
    u32 burst;
    u32 vSync;
    u32 hSync;
    u32 leap;
    u32 hStart;
    u32 xScale;
    u32 vCurrent;
} OSViCommonRegs;
typedef struct
{
    u32 origin;
    u32 yScale;
    u32 vStart;
    u32 vBurst;
    u32 vIntr;
} OSViFieldRegs;
typedef struct
{
    u8 type;
    OSViCommonRegs comRegs;
    OSViFieldRegs fldRegs[2];
} OSViMode;
typedef struct
{
               u16 unk00;
               u16 retraceCount;
               void* buffer;
               OSViMode *unk08;
               u32 features;
               OSMesgQueue *mq;
               OSMesg *msg;
               u32 unk18;
               u32 unk1c;
               u32 unk20;
               f32 unk24;
               u16 unk28;
               u32 unk2c;
} OSViContext;
void osCreateViManager(OSPri pri);
void osViSetMode(OSViMode *mode);
void osViSetEvent(OSMesgQueue *mq, OSMesg msg, u32 retraceCount);
void osViBlack(u8 active);
void osViSetSpecialFeatures(u32 func);
void osViSwapBuffer(void *vaddr);
void osViSetYScale(f32 scale);
extern OSViMode osViModeTable[];
typedef struct {
    u32 errStatus;
    void *dramAddr;
    void *C2Addr;
    u32 sectorSize;
    u32 C1ErrNum;
    u32 C1ErrSector[4];
} __OSBlockInfo;
typedef struct {
    u32 cmdType;
    u16 transferMode;
    u16 blockNum;
    s32 sectorNum;
    uintptr_t devAddr;
    u32 bmCtlShadow;
    u32 seqCtlShadow;
    __OSBlockInfo block[2];
} __OSTranxInfo;
typedef struct OSPiHandle_s {
    struct OSPiHandle_s *next;
    u8 type;
    u8 latency;
    u8 pageSize;
    u8 relDuration;
    u8 pulse;
    u8 domain;
    u32 baseAddress;
    u32 speed;
    __OSTranxInfo transferInfo;
} OSPiHandle;
typedef struct {
    u8 type;
    uintptr_t address;
} OSPiInfo;
typedef struct {
    u16 type;
    u8 pri;
    u8 status;
    OSMesgQueue *retQueue;
} OSIoMesgHdr;
typedef struct {
             OSIoMesgHdr hdr;
             void *dramAddr;
             uintptr_t devAddr;
             size_t size;
} OSIoMesg;
s32 osPiStartDma(OSIoMesg *mb, s32 priority, s32 direction, uintptr_t devAddr, void *vAddr,
                 size_t nbytes, OSMesgQueue *mq);
void osCreatePiManager(OSPri pri, OSMesgQueue *cmdQ, OSMesg *cmdBuf, s32 cmdMsgCnt);
OSMesgQueue *osPiGetCmdQueue(void);
s32 osPiWriteIo(uintptr_t devAddr, u32 data);
s32 osPiReadIo(uintptr_t devAddr, u32 *data);
s32 osPiRawStartDma(s32 dir, u32 cart_addr, void *dram_addr, size_t size);
s32 osEPiRawStartDma(OSPiHandle *piHandle, s32 dir, u32 cart_addr, void *dram_addr, size_t size);
extern OSPiHandle *osCartRomInit(void);
extern OSPiHandle *osLeoDiskInit(void);
extern OSPiHandle *osDriveRomInit(void);
extern s32 osEPiDeviceType(OSPiHandle *, OSPiInfo *);
extern s32 osEPiRawWriteIo(OSPiHandle *, u32 , u32);
extern s32 osEPiRawReadIo(OSPiHandle *, u32 , u32 *);
extern s32 osEPiWriteIo(OSPiHandle *, u32 , u32 );
extern s32 osEPiReadIo(OSPiHandle *, u32 , u32 *);
extern s32 osEPiStartDma(OSPiHandle *, OSIoMesg *, s32);
extern s32 osEPiLinkHandle(OSPiHandle *);
OSThread *__osGetCurrFaultedThread(void);
typedef struct {
 short ob[3];
 unsigned short flag;
 short tc[2];
 unsigned char cn[4];
} Vtx_t;
typedef struct {
 short ob[3];
 unsigned short flag;
 short tc[2];
 signed char n[3];
 unsigned char a;
} Vtx_tn;
typedef union {
    Vtx_t v;
    Vtx_tn n;
    long long int force_structure_alignment;
} Vtx;
typedef struct {
  void *SourceImagePointer;
  void *TlutPointer;
  short Stride;
  short SubImageWidth;
  short SubImageHeight;
  char SourceImageType;
  char SourceImageBitSize;
  short SourceImageOffsetS;
  short SourceImageOffsetT;
  char dummy[4];
} uSprite_t;
typedef union {
  uSprite_t s;
  long long int force_structure_allignment[3];
} uSprite;
typedef struct {
 unsigned char flag;
 unsigned char v[3];
} Tri;
typedef s32 Mtx_t[4][4];
typedef union {
    Mtx_t m;
    long long int force_structure_alignment;
} Mtx;
typedef struct {
 short vscale[4];
 short vtrans[4];
} Vp_t;
typedef union {
    Vp_t vp;
    long long int force_structure_alignment;
} Vp;
typedef struct {
  unsigned char col[3];
  char pad1;
  unsigned char colc[3];
  char pad2;
  signed char dir[3];
  char pad3;
} Light_t;
typedef struct {
  unsigned char col[3];
  char pad1;
  unsigned char colc[3];
  char pad2;
} Ambient_t;
typedef struct {
  int x1,y1,x2,y2;
} Hilite_t;
typedef union {
    Light_t l;
    long long int force_structure_alignment[2];
} Light;
typedef union {
    Ambient_t l;
    long long int force_structure_alignment[1];
} Ambient;
typedef struct {
    Ambient a;
    Light l[7];
} Lightsn;
typedef struct {
    Ambient a;
    Light l[1];
} Lights0;
typedef struct {
    Ambient a;
    Light l[1];
} Lights1;
typedef struct {
    Ambient a;
    Light l[2];
} Lights2;
typedef struct {
    Ambient a;
    Light l[3];
} Lights3;
typedef struct {
    Ambient a;
    Light l[4];
} Lights4;
typedef struct {
    Ambient a;
    Light l[5];
} Lights5;
typedef struct {
    Ambient a;
    Light l[6];
} Lights6;
typedef struct {
    Ambient a;
    Light l[7];
} Lights7;
typedef struct {
    Light l[2];
} LookAt;
typedef union {
    Hilite_t h;
    long int force_structure_alignment[4];
} Hilite;
void guPerspectiveF(float mf[4][4], u16 *perspNorm, float fovy, float aspect,
                    float near, float far, float scale);
void guPerspective(Mtx *m, u16 *perspNorm, float fovy, float aspect, float near,
                   float far, float scale);
void guOrtho(Mtx *m, float left, float right, float bottom, float top,
             float near, float far, float scale);
void guTranslate(Mtx *m, float x, float y, float z);
void guRotate(Mtx *m, float a, float x, float y, float z);
void guScale(Mtx *m, float x, float y, float z);
void guMtxF2L(float mf[4][4], Mtx *m);
void guMtxIdent(Mtx *m);
void guMtxIdentF(float mf[4][4]);
void guMtxL2F(float mf[4][4], Mtx *m);
void guNormalize(float *, float *, float *);
void guAlign(Mtx *m, float a, float x, float y, float z);
void guRotateRPY(Mtx *m, float r, float p, float y);
void guLookAtReflect (Mtx *m, LookAt *l, float xEye, float yEye, float zEye,
                    float xAt, float yAt, float zAt,
                    float xUp, float yUp, float zUp);
typedef struct {
 int cmd:8;
 unsigned int par:8;
 unsigned int len:16;
 uintptr_t addr;
} Gdma;
typedef struct {
  int cmd:8;
  int pad:24;
  Tri tri;
} Gtri;
typedef struct {
  int cmd:8;
  int pad1:24;
  int pad2:24;
  unsigned char param:8;
} Gpopmtx;
typedef struct {
  int cmd:8;
  int pad0:8;
  int mw_index:8;
  int number:8;
  int pad1:8;
  int base:24;
} Gsegment;
typedef struct {
  int cmd:8;
  int pad0:8;
  int sft:8;
  int len:8;
  unsigned int data:32;
} GsetothermodeL;
typedef struct {
  int cmd:8;
  int pad0:8;
  int sft:8;
  int len:8;
  unsigned int data:32;
} GsetothermodeH;
typedef struct {
  unsigned char cmd;
  unsigned char lodscale;
  unsigned char tile;
  unsigned char on;
  unsigned short s;
  unsigned short t;
} Gtexture;
typedef struct {
  int cmd:8;
  int pad:24;
  Tri line;
} Gline3D;
typedef struct {
  int cmd:8;
  int pad1:24;
  short int pad2;
  short int scale;
} Gperspnorm;
typedef struct {
                int cmd:8;
                unsigned int fmt:3;
                unsigned int siz:2;
                unsigned int pad:7;
                unsigned int wd:12;
                uintptr_t dram;
} Gsetimg;
typedef struct {
  int cmd:8;
  unsigned int muxs0:24;
  unsigned int muxs1:32;
} Gsetcombine;
typedef struct {
  int cmd:8;
  unsigned char pad;
  unsigned char prim_min_level;
  unsigned char prim_level;
  unsigned long color;
} Gsetcolor;
typedef struct {
  int cmd:8;
  int x0:10;
  int x0frac:2;
  int y0:10;
  int y0frac:2;
  unsigned int pad:8;
  int x1:10;
  int x1frac:2;
  int y1:10;
  int y1frac:2;
} Gfillrect;
typedef struct {
  int cmd:8;
  unsigned int fmt:3;
  unsigned int siz:2;
  unsigned int pad0:1;
  unsigned int line:9;
  unsigned int tmem:9;
  unsigned int pad1:5;
  unsigned int tile:3;
  unsigned int palette:4;
  unsigned int ct:1;
  unsigned int mt:1;
  unsigned int maskt:4;
  unsigned int shiftt:4;
  unsigned int cs:1;
  unsigned int ms:1;
  unsigned int masks:4;
  unsigned int shifts:4;
} Gsettile;
typedef struct {
  int cmd:8;
  unsigned int sl:12;
  unsigned int tl:12;
  int pad:5;
  unsigned int tile:3;
  unsigned int sh:12;
  unsigned int th:12;
} Gloadtile;
typedef Gloadtile Gloadblock;
typedef Gloadtile Gsettilesize;
typedef Gloadtile Gloadtlut;
typedef struct {
  unsigned int cmd:8;
  unsigned int xl:12;
  unsigned int yl:12;
  unsigned int pad1:5;
  unsigned int tile:3;
  unsigned int xh:12;
  unsigned int yh:12;
  unsigned int s:16;
  unsigned int t:16;
  unsigned int dsdx:16;
  unsigned int dtdy:16;
} Gtexrect;
typedef struct {
    unsigned long w0;
    unsigned long w1;
    unsigned long w2;
    unsigned long w3;
} TexRect;
typedef struct {
 uintptr_t w0;
 uintptr_t w1;
} Gwords;
typedef union {
 Gwords words;
 long long int force_structure_alignment;
} Gfx;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int gain:16;
    unsigned int addr;
} Aadpcm;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int gain:16;
    unsigned int addr;
} Apolef;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int pad1:16;
    unsigned int addr;
} Aenvelope;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:8;
    unsigned int dmem:16;
    unsigned int pad2:16;
    unsigned int count:16;
} Aclearbuff;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:8;
    unsigned int pad2:16;
    unsigned int inL:16;
    unsigned int inR:16;
} Ainterleave;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:24;
    unsigned int addr;
} Aloadbuff;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int pad1:16;
    unsigned int addr;
} Aenvmixer;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int gain:16;
    unsigned int dmemi:16;
    unsigned int dmemo:16;
} Amixer;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int dmem2:16;
    unsigned int addr;
} Apan;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int pitch:16;
    unsigned int addr;
} Aresample;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int pad1:16;
    unsigned int addr;
} Areverb;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:24;
    unsigned int addr;
} Asavebuff;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:24;
    unsigned int pad2:2;
    unsigned int number:4;
    unsigned int base:24;
} Asegment;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int dmemin:16;
    unsigned int dmemout:16;
    unsigned int count:16;
} Asetbuff;
typedef struct {
    unsigned int cmd:8;
    unsigned int flags:8;
    unsigned int vol:16;
    unsigned int voltgt:16;
    unsigned int volrate:16;
} Asetvol;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:8;
    unsigned int dmemin:16;
    unsigned int dmemout:16;
    unsigned int count:16;
} Admemmove;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:8;
    unsigned int count:16;
    unsigned int addr;
} Aloadadpcm;
typedef struct {
    unsigned int cmd:8;
    unsigned int pad1:8;
    unsigned int pad2:16;
    unsigned int addr;
} Asetloop;
typedef struct {
    uintptr_t w0;
    uintptr_t w1;
} Awords;
typedef union {
    Awords words;
    long long int force_union_align;
} Acmd;
typedef short ADPCM_STATE[16];
typedef short POLEF_STATE[4];
typedef short RESAMPLE_STATE[16];
typedef short ENVMIX_STATE[40];
extern s32 osEepromProbe(OSMesgQueue *);
extern s32 osEepromRead(OSMesgQueue *, u8, u8 *);
extern s32 osEepromWrite(OSMesgQueue *, u8, u8 *);
extern s32 osEepromLongRead(OSMesgQueue *, u8, u8 *, int);
extern s32 osEepromLongWrite(OSMesgQueue *, u8, u8 *, int);
extern void bcopy(const void *, void *, size_t);
extern void bzero(void *, size_t);
extern u32 osAiGetStatus(void);
extern u32 osAiGetLength(void);
extern s32 osAiSetFrequency(u32);
extern s32 osAiSetNextBuffer(void *, u32);
typedef struct
{
    u8 *offset;
    s32 len;
} ALSeqData;
typedef struct
{
    s16 revision;
    s16 seqCount;
    ALSeqData seqArray[1];
} ALSeqFile;
void alSeqFileNew(ALSeqFile *f, u8 *base);
extern u32 osTvType;
extern u32 osRomBase;
extern u32 osResetType;
extern u32 osMemSize;
extern u8 osAppNmiBuffer[64];
__asm__(".include \"include/labels.inc\"\n");
typedef struct {
    u16 *str;
    s8 wdSpacing;
    s8 htSpacing;
    u8 p3;
    u8 p4;
} FontParams;
typedef struct {
    u32 _000;
    u32 _004;
    u32 _008;
    u32 _00C;
    u32 _010;
    u32 _014;
    u32 _018;
    u32 _01C;
    u32 _020;
    u32 _024;
    u32 _028;
    u8 _02C;
    u8 _02D;
    u8 _02E;
    u8 unk2F;
} UnkStruct80036494_0C_00;
typedef struct {
    UnkStruct80036494_0C_00 *unk0;
    u32 _004;
    u32 _008;
    u32 _00C;
    u32 _010;
    u32 unk14;
    u32 _018;
    u16 unk1C;
} UnkStruct80036494_0C;
typedef struct {
    u32 _000;
    u32 _004;
    u32 _008;
    UnkStruct80036494_0C *unkC;
} UnkStruct80036494;
typedef struct {
    s16 *angelName;
    s16 *machineType;
    s16 *description;
} MissionText;
extern u8 D_800D3BC0,
          D_800D3BC1,
          D_800D3BC2,
          D_800D3BC3,
          D_800D3BC4,
          D_800D3BC5,
          D_800D3BC6;
extern f32 D_800D3BD8, D_800D3BDC, D_800D3BE0;
UnkStruct80036494 *func_80036494_ovl3(u16, s32, s32);
UnkStruct80036494 *func_80036304_ovl3(u16 arg0);
void func_80037BDC_ovl3(u16 *, int, int, s16, int);
typedef u16 String[];
typedef struct {
                u16 *str;
                u16 p1;
                u16 p2;
                u16 p3;
                u16 p4;
                u8 p5;
                u8 p6;
                u8 p7;
                u8 p8;
                u8 p9;
                u8 p10;
                u16 pad;
} TextParams_ovl7;
String D_80040F10_ovl7 = R"(
「ごめんなさい… 」)";
String D_80040F28_ovl7 = R"(
 「こういう時、 どんな顔を
   すればいいのかわからないの」)";
String D_80040F6C_ovl7 = R"(
「笑えば… いいと思うよ」)";
String D_80040F8C_ovl7 = R"(日本重化学工業共同体の制作
した無人の使徒迎撃ロボット)";
String D_80040FC4_ovl7 = R"(「ジェットアローン」)";
String D_80040FDC_ovl7 = R"(その完成披露記念会にて
  起動テストが行われていた。)";
String D_80041014_ovl7 = R"(炉心融解の恐れあり。)";
String D_8004102C_ovl7 = R"(目    標 :)";
String D_80041040_ovl7 = R"(ジェットアローン)";
String D_80041054_ovl7 = R"(初号機)";
String D_8004105C_ovl7 = R"(葛城一尉をJA内に
送り込む、 及び
JAの活動を鎮圧する。)";
String D_8004109C_ovl7 = R"(
「奇跡は用意されていたのよ」)";
String D_800410BC_ovl7 = R"(
「 … 誰かにね」)";
String D_800410D4_ovl7 = R"(第7使徒の襲来が確認され、)";
String D_800410F0_ovl7 = R"(出撃する初号機と弐号機。)";
String D_8004110C_ovl7 = R"(
使徒に敗れる)";
String D_8004111C_ovl7 = R"(
初号機と弐号機、)";
String D_80041130_ovl7 = R"(
その無様な婆。)";
String D_80041144_ovl7 = R"(
現在、 使徒は国連軍が)";
String D_80041160_ovl7 = R"(
(N²)爆雷を投下し、 足止めに成功。)";
String D_80041184_ovl7 = R"(
しかし、 再度進攻も時間の問題。)";
String D_800411A8_ovl7 = R"(
使徒を倒すには、)";
String D_800411BC_ovl7 = R"(
2体分離中のコアに対する)";
String D_800411D8_ovl7 = R"(
2点同時の荷重攻撃しかない。)";
String D_800411F8_ovl7 = R"(
その為には、)";
String D_80041208_ovl7 = R"(
シンジとアスカの完壁な)";
String D_80041224_ovl7 = R"(
ユニゾンが必要となる。)";
String D_80041240_ovl7 = R"(第7使徒イスラフェル)";
String D_80041258_ovl7 = R"(初号機 ・ 弐号機)";
String D_8004126C_ovl7 = R"(EＶA 2体の使徒に
対する同時荷重攻撃
による使徒の殲滅。)";
String D_800412AC_ovl7 = R"(  浅間山地震研究所
            からの報告書で)";
String D_800412EC_ovl7 = R"(  火口内部に、     
     何かの影が確認された。)";
String D_8004132C_ovl7 = R"(観測の結果、 パターン青)";
String D_80041348_ovl7 = R"(  使徒と確認。   )";
String D_80041360_ovl7 = R"(「失敗は許さん」)";
String D_80041374_ovl7 = R"(A-17 の要請を受け、
使徒因収の許可を得るゲンドウ。)";
String D_800413B0_ovl7 = R"(
「失敗か… その時は人類     
      そのものが消えてしまうよ」)";
String D_80041400_ovl7 = R"(「EＶA D型装備」)";
String D_80041418_ovl7 = R"(浅間山火口に出撃する弐号機。)";
String D_80041438_ovl7 = R"(弐号機 下降開始)";
String D_8004144C_ovl7 = R"(因収成功と思えたが…。)";
String D_80041464_ovl7 = R"(使徒、 羽化開始 !)";
String D_8004147C_ovl7 = R"(第8使徒サンダルフォン)";
String D_80041494_ovl7 = R"(弐号機)";
String D_8004149C_ovl7 = R"(マグマ中での使徒の
殲滅。)";
String D_800414B8_ovl7 = R"( 第10使徒、     
 その巨大な物体は突如として)";
String D_800414F0_ovl7 = R"(インド洋上空の、    
           衛星軌道上に出現。)";
String D_80041534_ovl7 = R"( 本体ごとネルフ本部に          
      落下するものと思われる。)";
String D_80041588_ovl7 = R"(
(N²)航空爆雷も効果なし。)";
String D_800415A4_ovl7 = R"(ミサトは特別宣言D-17を発令。)";
String D_800415C8_ovl7 = R"(半径50キロ以内の      
        全市民はただちに避難。)";
String D_80041610_ovl7 = R"(
ミサトは、 ATフィールド最大)";
String D_80041634_ovl7 = R"(
3機のEＶAで直接使徒を)";
String D_80041650_ovl7 = R"(
  受け止める事を決意。  )";
String D_80041670_ovl7 = R"(
勝算は 0.00001%、)";
String D_80041690_ovl7 = R"(
 奇跡は起きるのか…。)";
String D_800416AC_ovl7 = R"(第10使徒サハクィエル)";
String D_800416C4_ovl7 = R"(EＶA 全機)";
String D_800416D4_ovl7 = R"(EＶA 3機による
使徒の受け止め、
及び殲滅。)";
String D_80041708_ovl7 = R"(
作戦は見事に成功。)";
String D_80041720_ovl7 = R"(
「よくやったな、 シンジ」)";
String D_80041740_ovl7 = R"(EＶA参号機が移送される。)";
String D_8004175C_ovl7 = R"(EＶA参号機 起動実験)";
String D_80041774_ovl7 = R"(
実験は、 問題ないと思われた…。)";
String D_80041798_ovl7 = R"(
            しかし、
  突如シンクログラフが反転、)";
String D_800417DC_ovl7 = R"(
体内に高エネルギー反応 !!)";
String D_800417FC_ovl7 = R"(
「実験中止、 まさか使徒 !?」)";
String D_80041820_ovl7 = R"(使徒に乗取られたEＶA参号機。)";
String D_80041840_ovl7 = R"(
「参号機は現時刻を以て破棄、)";
String D_80041860_ovl7 = R"(
目標を第13使徒と識別する」)";
String D_80041880_ovl7 = R"(EＶA参号機の前に、         
       敗れる弐号機と零号機。)";
String D_800418D0_ovl7 = R"(
 「因路をダミープラグに切り替えろ」)";
String D_800418F8_ovl7 = R"(第13使徒バルディエル)";
String D_80041910_ovl7 = R"(初号機)";
String D_80041918_ovl7 = R"(ダミープラグによる
使徒の殲滅。)";
String D_8004193C_ovl7 = R"(  何の前ぶれもなく
       第14使徒が現れた。)";
String D_80041978_ovl7 = R"((N²)爆雷を手に殲滅を試みるレイ。)";
String D_80041998_ovl7 = R"(第14使徒ぜルエル)";
String D_800419AC_ovl7 = R"(初号機)";
String D_800419B4_ovl7 = R"(ジオフロント上へ
使徒を射出、 及び
殲滅。)";
String D_800419E4_ovl7 = R"(
衛星軌道上に第15使徒出現。)";
String D_80041A04_ovl7 = R"(
巨大な翼を広げたまま、)";
String D_80041A20_ovl7 = R"(
 動かない使徒。   )";
String D_80041A3C_ovl7 = R"(
ポジトロンライフルにて、)";
String D_80041A58_ovl7 = R"(
使徒の殲滅を試みる弐号機。)";
String D_80041A78_ovl7 = R"(
その時、 謎の光が…。)";
String D_80041A94_ovl7 = R"(
使徒の心理攻撃 ?)";
String D_80041AAC_ovl7 = R"(
アスカの精神汚染がYに突入 !)";
String D_80041AD0_ovl7 = R"(
このままでは…。)";
String D_80041AE4_ovl7 = R"(零号機、
大出力ポジトロンライフル改で)";
String D_80041B0C_ovl7 = R"(
使徒を狙う。 )";
String D_80041B20_ovl7 = R"(
直撃…。)";
String D_80041B2C_ovl7 = R"(
しかし、 ATフィールドに)";
String D_80041B4C_ovl7 = R"(
 はじかれてしまう。  )";
String D_80041B68_ovl7 = R"(
「かまわん、 レイ」)";
String D_80041B80_ovl7 = R"(
「ドグマを降りて槍を使え」)";
String D_80041BA0_ovl7 = R"(零号機、
ロンギヌスの槍を手にする。)";
String D_80041BC8_ovl7 = R"(第15使徒アラエル)";
String D_80041BDC_ovl7 = R"(零号機)";
String D_80041BE4_ovl7 = R"(ロンギヌスの槍による、
衛星軌道上の使徒の
殲滅。)";
String D_80041C18_ovl7 = R"(
第16使徒との戦いにより、)";
String D_80041C38_ovl7 = R"(
墟塘となった第3新東京市、)";
String D_80041C58_ovl7 = R"(
その光景を見つめるシンジ…。)";
String D_80041C78_ovl7 = R"(
5(th)チルドレン 渚カヲル。)";
String D_80041C98_ovl7 = R"(
「歌はいいね」)";
String D_80041CAC_ovl7 = R"(
「カヲルでいいよ。 碇シンジ君」)";
String D_80041CD0_ovl7 = R"(
5(th)チルドレン シンクロテスト。)";
String D_80041CF4_ovl7 = R"(
コアの変換もなしに、
シンクロするカヲル)";
String D_80041D20_ovl7 = R"(
この少年はいったい…。)";
String D_80041D3C_ovl7 = R"(
シンジは、)";
String D_80041D4C_ovl7 = R"(
カヲルに対して安心を覚え…)";
String D_80041D6C_ovl7 = R"(
交流を深めていった…。)";
String D_80041D88_ovl7 = R"(
突如、 EＶA弐号機起動 !?)";
String D_80041DAC_ovl7 = R"(
いったい誰が操るのか…。)";
String D_80041DC8_ovl7 = R"(弐号機を操るのは
5(th)チルドレン 渚カヲル。)";
String D_80041DF8_ovl7 = R"(
そして最後のシ者…。)";
String D_80041E10_ovl7 = R"(第17使徒タブリス)";
String D_80041E24_ovl7 = R"(初号機)";
String D_80041E2C_ovl7 = R"(カヲルの制御下にある
弐号機の沈黙、 及び
殲滅。)";
String D_80041E60_ovl7 = R"(
「約束の時が来た」)";
String D_80041E78_ovl7 = R"(
最後の使徒は殲滅した。)";
String D_80041E94_ovl7 = R"(ぜーレは、
己の最終目的を達成する為)";
String D_80041EBC_ovl7 = R"(
NERV本部の直接占拠を謀る。)";
String D_80041EE0_ovl7 = R"(
「死は何も生みませんよ」)";
String D_80041EFC_ovl7 = R"(
「死は君たちに与えよう」)";
String D_80041F18_ovl7 = R"(戦自によるNERVへの    
          猛攻撃が開始された。  )";
String D_80041F68_ovl7 = R"(
 「やはり最後の敵は   
          同じ人間だったな…」)";
String D_80041FB0_ovl7 = R"(
安全の為、 地底湖に隠された)";
String D_80041FD0_ovl7 = R"(
アスカと弐号機。)";
String D_80041FE4_ovl7 = R"(
呆熱自失状態だったアスカが…)";
String D_80042004_ovl7 = R"(
今、 目覚める…。)";
String D_8004201C_ovl7 = R"(戦略自衛隊)";
String D_80042028_ovl7 = R"(弐号機)";
String D_80042030_ovl7 = R"(ジオフロント上の
戦略自衛隊の撃退。)";
String D_80042058_ovl7 = R"(
「忌むべき存在のEＶA」)";
String D_80042074_ovl7 = R"(「やはり、 毒には毒を       
        もって制すべきだな」)";
String D_800420C0_ovl7 = R"(
「EＶAシリーズ…」)";
String D_800420D8_ovl7 = R"(
「完成していたの…」)";
String D_800420F0_ovl7 = R"(
「必ず殲滅… ね…」)";
String D_80042108_ovl7 = R"(EＶAシリーズ)";
String D_80042118_ovl7 = R"(弐号機)";
String D_80042120_ovl7 = R"(全てのEＶAシリーズの
殲滅。)";
String D_80042140_ovl7 = R"(殲滅したはずの…        
     EＶAシリーズが復活 !)";
String D_80042188_ovl7 = R"(
「EＶAシリーズ… 活動再開 !!」)";
String D_800421B0_ovl7 = R"(
「こ… これが弐号機 !?」)";
String D_800421D0_ovl7 = R"(「シンジ君…弐号機が…
アスカが…アスカがー」)";
String D_80042200_ovl7 = R"(その時…)";
String D_8004220C_ovl7 = R"(初号機が立ち上がる…。)";
TextParams_ovl7 D_80042224_ovl7[] = {
    {&D_80040F8C_ovl7, 0x00A0, 0x00AF, 0x001E, 0x00F0, 0x04, 0x02, 0xFC, 0x00, 0x02, 0x01, 0x0000},
    {&D_80040FC4_ovl7, 0x00A0, 0x00AF, 0x010E, 0x021C, 0x04, 0x02, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80040FDC_ovl7, 0x00A0, 0x008F, 0x001E, 0x00F0, 0x04, 0x04, 0xFC, 0x00, 0x02, 0x01, 0x0000},
    {&D_80041014_ovl7, 0x00A0, 0x00AF, 0x001E, 0x0082, 0x04, 0x07, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_8004102C_ovl7, 0x0017, 0x0018, 0x001E, 0x005A, 0x04, 0x09, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80041040_ovl7, 0x006C, 0x0018, 0x001E, 0x005A, 0x04, 0x09, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80041054_ovl7, 0x006C, 0x0034, 0x001E, 0x005A, 0x04, 0x09, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_8004105C_ovl7, 0x006C, 0x0050, 0x001E, 0x005A, 0x04, 0x09, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_8004109C_ovl7, 0x00A0, 0x00AF, 0x012C, 0x0186, 0x04, 0x63, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_800410BC_ovl7, 0x00A0, 0x00AF, 0x0186, 0x0384, 0x04, 0x63, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_800410D4_ovl7, 0x00A0, 0x00AF, 0x001E, 0x0096, 0x05, 0x01, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_800410F0_ovl7, 0x00A0, 0x00AF, 0x0096, 0x012C, 0x05, 0x01, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_8004110C_ovl7, 0x00A0, 0x008F, 0x001E, 0x0064, 0x05, 0x07, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_8004111C_ovl7, 0x00A0, 0x008F, 0x0064, 0x00B4, 0x05, 0x07, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041130_ovl7, 0x00A0, 0x008F, 0x001E, 0x00A0, 0x05, 0x08, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041144_ovl7, 0x00A0, 0x008F, 0x001E, 0x008C, 0x05, 0x09, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041160_ovl7, 0x00A0, 0x008F, 0x008C, 0x00FA, 0x05, 0x09, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041184_ovl7, 0x00A0, 0x008F, 0x00FA, 0x0190, 0x05, 0x09, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_800411A8_ovl7, 0x00A0, 0x008F, 0x001E, 0x0096, 0x05, 0x0B, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_800411BC_ovl7, 0x00A0, 0x008F, 0x0096, 0x012C, 0x05, 0x0B, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_800411D8_ovl7, 0x00A0, 0x008F, 0x001E, 0x0096, 0x05, 0x0C, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_800411F8_ovl7, 0x00A0, 0x008F, 0x0096, 0x012C, 0x05, 0x0C, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041208_ovl7, 0x00A0, 0x008F, 0x001E, 0x0096, 0x05, 0x0D, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041224_ovl7, 0x00A0, 0x008F, 0x0096, 0x012C, 0x05, 0x0D, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041240_ovl7, 0x006C, 0x0018, 0x001E, 0x005A, 0x05, 0x0E, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80041258_ovl7, 0x006C, 0x0034, 0x001E, 0x005A, 0x05, 0x0E, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_8004126C_ovl7, 0x006C, 0x0050, 0x001E, 0x005A, 0x05, 0x0E, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_800412AC_ovl7, 0x00A0, 0x00AF, 0x003C, 0x00B4, 0x06, 0x01, 0xFC, 0x00, 0x02, 0x01, 0x0000},
    {&D_800412EC_ovl7, 0x00A0, 0x00AF, 0x00B4, 0x01E0, 0x06, 0x01, 0xFC, 0x00, 0x02, 0x01, 0x0000},
    {&D_8004132C_ovl7, 0x00A0, 0x00AF, 0x001E, 0x0064, 0x06, 0x02, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041348_ovl7, 0x00A0, 0x00AF, 0x0064, 0x00BE, 0x06, 0x02, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041374_ovl7, 0x00A0, 0x00AF, 0x001E, 0x0082, 0x06, 0x03, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041360_ovl7, 0x00A0, 0x00AF, 0x00B4, 0x0104, 0x06, 0x03, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_800413B0_ovl7, 0x00A0, 0x008F, 0x003C, 0x00FA, 0x06, 0x04, 0xFC, 0x00, 0x02, 0x02, 0x0000},
    {&D_80041400_ovl7, 0x00A0, 0x00AF, 0x001E, 0x00FA, 0x06, 0x08, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041418_ovl7, 0x00A0, 0x00AF, 0x001E, 0x0096, 0x06, 0x09, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041438_ovl7, 0x00A0, 0x00AF, 0x001E, 0x0082, 0x06, 0x0A, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_8004144C_ovl7, 0x00A0, 0x00AF, 0x001E, 0x0082, 0x06, 0x0E, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041464_ovl7, 0x00A0, 0x00AF, 0x001E, 0x0082, 0x06, 0x0F, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_8004147C_ovl7, 0x006C, 0x0018, 0x001E, 0x005A, 0x06, 0x11, 0xFB, 0x00, 0x02, 0x03, 0x0000},
    {&D_80041494_ovl7, 0x006C, 0x0034, 0x001E, 0x005A, 0x06, 0x11, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_8004149C_ovl7, 0x006C, 0x0050, 0x001E, 0x005A, 0x06, 0x11, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_800414B8_ovl7, 0x00A0, 0x00AF, 0x001E, 0x0082, 0x07, 0x01, 0xFC, 0x00, 0x02, 0x01, 0x0000},
    {&D_800414F0_ovl7, 0x00A0, 0x00AF, 0x0082, 0x00E6, 0x07, 0x01, 0xFC, 0x00, 0x02, 0x01, 0x0000},
    {&D_80041534_ovl7, 0x00A0, 0x00AF, 0x001E, 0x00D2, 0x07, 0x02, 0xFC, 0x00, 0x02, 0x01, 0x0000},
    {&D_80041588_ovl7, 0x00A0, 0x008F, 0x001E, 0x0096, 0x07, 0x03, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_800415A4_ovl7, 0x00A0, 0x00AF, 0x001E, 0x005A, 0x07, 0x04, 0xFC, 0x00, 0x02, 0x01, 0x0000},
    {&D_800415C8_ovl7, 0x00A0, 0x00AF, 0x005A, 0x00B4, 0x07, 0x04, 0xFC, 0x00, 0x02, 0x01, 0x0000},
    {&D_80041610_ovl7, 0x00A0, 0x008F, 0x001E, 0x0064, 0x07, 0x08, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041634_ovl7, 0x00A0, 0x008F, 0x0064, 0x00A0, 0x07, 0x08, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041650_ovl7, 0x00A0, 0x008F, 0x00A0, 0x010E, 0x07, 0x08, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041670_ovl7, 0x00A0, 0x008F, 0x001E, 0x0096, 0x07, 0x09, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041690_ovl7, 0x00A0, 0x008F, 0x0096, 0x0118, 0x07, 0x09, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_800416AC_ovl7, 0x006C, 0x0018, 0x001E, 0x005A, 0x07, 0x0A, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_800416C4_ovl7, 0x006C, 0x0034, 0x001E, 0x005A, 0x07, 0x0A, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_800416D4_ovl7, 0x006C, 0x0050, 0x001E, 0x005A, 0x07, 0x0A, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80041708_ovl7, 0x00A0, 0x008F, 0x001E, 0x00B4, 0x07, 0x63, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041720_ovl7, 0x00A0, 0x008F, 0x012C, 0x01A4, 0x07, 0x63, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_80041740_ovl7, 0x00A0, 0x00AF, 0x001E, 0x0082, 0x08, 0x01, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_8004175C_ovl7, 0x00A0, 0x00AF, 0x001E, 0x00A0, 0x08, 0x05, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041774_ovl7, 0x00A0, 0x008F, 0x001E, 0x0078, 0x08, 0x07, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041798_ovl7, 0x00A0, 0x008F, 0x0078, 0x00D2, 0x08, 0x07, 0xFC, 0x00, 0x02, 0x01, 0x0000},
    {&D_800417DC_ovl7, 0x00A0, 0x008F, 0x00D2, 0x012C, 0x08, 0x07, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_800417FC_ovl7, 0x00A0, 0x008F, 0x003C, 0x00A0, 0x08, 0x08, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_80041820_ovl7, 0x00A0, 0x00AF, 0x001E, 0x00B4, 0x08, 0x0A, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041840_ovl7, 0x00A0, 0x008F, 0x003C, 0x0096, 0x08, 0x0C, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_80041860_ovl7, 0x00A0, 0x008F, 0x0096, 0x00FA, 0x08, 0x0C, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_80041880_ovl7, 0x00A0, 0x00AF, 0x001E, 0x0096, 0x08, 0x12, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_800418D0_ovl7, 0x00A0, 0x008F, 0x0005, 0x0064, 0x08, 0x13, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_800418F8_ovl7, 0x006C, 0x0018, 0x001E, 0x005A, 0x08, 0x14, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80041910_ovl7, 0x006C, 0x0034, 0x001E, 0x005A, 0x08, 0x14, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80041918_ovl7, 0x006C, 0x0050, 0x001E, 0x005A, 0x08, 0x14, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_8004193C_ovl7, 0x00A0, 0x00AF, 0x003C, 0x00DC, 0x09, 0x01, 0xFC, 0x00, 0x02, 0x01, 0x0000},
    {&D_80041978_ovl7, 0x00A0, 0x00AF, 0x001E, 0x00BE, 0x09, 0x08, 0xFC, 0x00, 0x02, 0x01, 0x0000},
    {&D_80041998_ovl7, 0x006C, 0x0018, 0x001E, 0x005A, 0x09, 0x0D, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_800419AC_ovl7, 0x006C, 0x0034, 0x001E, 0x005A, 0x09, 0x0D, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_800419B4_ovl7, 0x006C, 0x0050, 0x001E, 0x005A, 0x09, 0x0D, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_800419E4_ovl7, 0x00A0, 0x008F, 0x001E, 0x0082, 0x0A, 0x01, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041A04_ovl7, 0x00A0, 0x008F, 0x0082, 0x00E6, 0x0A, 0x01, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041A20_ovl7, 0x00A0, 0x008F, 0x00E6, 0x0154, 0x0A, 0x01, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041A3C_ovl7, 0x00A0, 0x008F, 0x001E, 0x0078, 0x0A, 0x03, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041A58_ovl7, 0x00A0, 0x008F, 0x0078, 0x00D2, 0x0A, 0x03, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041A78_ovl7, 0x00A0, 0x008F, 0x00D2, 0x0118, 0x0A, 0x03, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041A94_ovl7, 0x00A0, 0x008F, 0x001E, 0x00A0, 0x0A, 0x04, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041AAC_ovl7, 0x00A0, 0x008F, 0x001E, 0x0078, 0x0A, 0x05, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041AD0_ovl7, 0x00A0, 0x008F, 0x0078, 0x00DC, 0x0A, 0x05, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041AE4_ovl7, 0x00A0, 0x008F, 0x001E, 0x006E, 0x0A, 0x06, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041B0C_ovl7, 0x00A0, 0x008F, 0x006E, 0x00BE, 0x0A, 0x06, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041B20_ovl7, 0x00A0, 0x008F, 0x001E, 0x005A, 0x0A, 0x07, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041B2C_ovl7, 0x00A0, 0x008F, 0x001E, 0x0064, 0x0A, 0x08, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041B4C_ovl7, 0x00A0, 0x008F, 0x0064, 0x00A0, 0x0A, 0x08, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041B68_ovl7, 0x00A0, 0x008F, 0x001E, 0x0050, 0x0A, 0x09, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_80041B80_ovl7, 0x00A0, 0x008F, 0x0050, 0x00A0, 0x0A, 0x09, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_80041BA0_ovl7, 0x00A0, 0x00AF, 0x001E, 0x00A0, 0x0A, 0x0B, 0xFC, 0x00, 0x02, 0x01, 0x0000},
    {&D_80041BC8_ovl7, 0x006C, 0x0018, 0x001E, 0x005A, 0x0A, 0x0D, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80041BDC_ovl7, 0x006C, 0x0034, 0x001E, 0x005A, 0x0A, 0x0D, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80041BE4_ovl7, 0x006C, 0x0050, 0x001E, 0x005A, 0x0A, 0x0D, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80041C18_ovl7, 0x00A0, 0x008F, 0x001E, 0x0082, 0x0B, 0x01, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041C38_ovl7, 0x00A0, 0x008F, 0x0082, 0x00E6, 0x0B, 0x01, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041C58_ovl7, 0x00A0, 0x008F, 0x00E6, 0x014A, 0x0B, 0x01, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041C78_ovl7, 0x00A0, 0x008F, 0x001E, 0x0096, 0x0B, 0x02, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041C98_ovl7, 0x00A0, 0x008F, 0x0168, 0x01F4, 0x0B, 0x02, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_80041CAC_ovl7, 0x00A0, 0x008F, 0x003C, 0x00BE, 0x0B, 0x03, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_80041CD0_ovl7, 0x00A0, 0x008F, 0x001E, 0x0078, 0x0B, 0x06, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041CF4_ovl7, 0x00A0, 0x008F, 0x0078, 0x00D2, 0x0B, 0x06, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041D20_ovl7, 0x00A0, 0x008F, 0x00D2, 0x012C, 0x0B, 0x06, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041D3C_ovl7, 0x00A0, 0x008F, 0x001E, 0x0064, 0x0B, 0x07, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041D4C_ovl7, 0x00A0, 0x008F, 0x001E, 0x00D2, 0x0B, 0x08, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041D6C_ovl7, 0x00A0, 0x008F, 0x001E, 0x0082, 0x0B, 0x09, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041D88_ovl7, 0x00A0, 0x008F, 0x001E, 0x0064, 0x0B, 0x0C, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041DAC_ovl7, 0x00A0, 0x008F, 0x001E, 0x0082, 0x0B, 0x0D, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041DC8_ovl7, 0x00A0, 0x00AF, 0x001E, 0x005A, 0x0B, 0x0E, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041DF8_ovl7, 0x00A0, 0x00AF, 0x005A, 0x00A0, 0x0B, 0x0E, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041E10_ovl7, 0x006C, 0x0018, 0x001E, 0x005A, 0x0B, 0x0F, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80041E24_ovl7, 0x006C, 0x0034, 0x001E, 0x005A, 0x0B, 0x0F, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80041E2C_ovl7, 0x006C, 0x0050, 0x001E, 0x005A, 0x0B, 0x0F, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80041E60_ovl7, 0x00A0, 0x008F, 0x003C, 0x00DC, 0x0C, 0x01, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_80041E78_ovl7, 0x00A0, 0x008F, 0x001E, 0x00BE, 0x0C, 0x02, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041E94_ovl7, 0x00A0, 0x008F, 0x00BE, 0x0154, 0x0C, 0x02, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041EBC_ovl7, 0x00A0, 0x008F, 0x0154, 0x01EA, 0x0C, 0x02, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041EE0_ovl7, 0x00A0, 0x008F, 0x003C, 0x00BE, 0x0C, 0x03, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_80041EFC_ovl7, 0x00A0, 0x008F, 0x003C, 0x00B4, 0x0C, 0x04, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_80041F68_ovl7, 0x00A0, 0x008F, 0x003C, 0x00DC, 0x0C, 0x09, 0xFC, 0x00, 0x02, 0x02, 0x0000},
    {&D_80041FB0_ovl7, 0x00A0, 0x008F, 0x003C, 0x008C, 0x0C, 0x0B, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041FD0_ovl7, 0x00A0, 0x008F, 0x008C, 0x0120, 0x0C, 0x0B, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041FE4_ovl7, 0x00A0, 0x008F, 0x0120, 0x0190, 0x0C, 0x0B, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80042004_ovl7, 0x00A0, 0x008F, 0x0190, 0x01EA, 0x0C, 0x0B, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_8004201C_ovl7, 0x006C, 0x0018, 0x001E, 0x005A, 0x0C, 0x1C, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80042028_ovl7, 0x006C, 0x0034, 0x001E, 0x005A, 0x0C, 0x1C, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80042030_ovl7, 0x006C, 0x0050, 0x001E, 0x005A, 0x0C, 0x1C, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80042058_ovl7, 0x00A0, 0x008F, 0x003C, 0x0172, 0x0D, 0x01, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_80042074_ovl7, 0x00A0, 0x008F, 0x0096, 0x0172, 0x0D, 0x02, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_800420C0_ovl7, 0x00A0, 0x008F, 0x001E, 0x0046, 0x0D, 0x09, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_800420D8_ovl7, 0x00A0, 0x008F, 0x0046, 0x0136, 0x0D, 0x09, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_800420F0_ovl7, 0x00A0, 0x008F, 0x001E, 0x0082, 0x0D, 0x0D, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_80042108_ovl7, 0x006C, 0x0018, 0x001E, 0x005A, 0x0D, 0x0E, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80042118_ovl7, 0x006C, 0x0034, 0x001E, 0x005A, 0x0D, 0x0E, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80042120_ovl7, 0x006C, 0x0050, 0x001E, 0x005A, 0x0D, 0x0E, 0xFC, 0x00, 0x02, 0x03, 0x0000},
    {&D_80042140_ovl7, 0x00A0, 0x00AF, 0x0014, 0x00DC, 0x0E, 0x02, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80042188_ovl7, 0x00A0, 0x008F, 0x001E, 0x00B4, 0x0E, 0x07, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_800421B0_ovl7, 0x00A0, 0x008F, 0x001E, 0x00B4, 0x0E, 0x0C, 0xFC, 0x00, 0x03, 0x02, 0x0000},
    {&D_80042200_ovl7, 0x00A0, 0x00AF, 0x001E, 0x0082, 0x0E, 0x0F, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_8004220C_ovl7, 0x00A0, 0x00AF, 0x001E, 0x0082, 0x0E, 0x10, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    {&D_80041F18_ovl7, 0x00A0, 0x00AF, 0x001E, 0x0384, 0x0C, 0x06, 0xFC, 0x00, 0x03, 0x01, 0x0000},
    { (void *)0, 0x00A0, 0x008F, 0x001E, 0x005A, 0x0E, 0x00, 0xFC, 0x00, 0x02, 0x02, 0x0000},
};
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80025E20_ovl7""\n" "\t.type ""func_80025E20_ovl7"", @function\n" "\t.ent\t""func_80025E20_ovl7""\n" "func_80025E20_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80025E20_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80025E20_ovl7""\n" ".end""func_80025E20_ovl7"":\n" "\t.size\t""func_80025E20_ovl7"",.end""func_80025E20_ovl7""-""func_80025E20_ovl7" "\n" "\t.globl\t" "func_80025E20_ovl7" ".NON_MATCHING\n" "\t" "func_80025E20_ovl7" ".NON_MATCHING" " = " "func_80025E20_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80026284_ovl7""\n" "\t.type ""func_80026284_ovl7"", @function\n" "\t.ent\t""func_80026284_ovl7""\n" "func_80026284_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80026284_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80026284_ovl7""\n" ".end""func_80026284_ovl7"":\n" "\t.size\t""func_80026284_ovl7"",.end""func_80026284_ovl7""-""func_80026284_ovl7" "\n" "\t.globl\t" "func_80026284_ovl7" ".NON_MATCHING\n" "\t" "func_80026284_ovl7" ".NON_MATCHING" " = " "func_80026284_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80026560_ovl7""\n" "\t.type ""func_80026560_ovl7"", @function\n" "\t.ent\t""func_80026560_ovl7""\n" "func_80026560_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80026560_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80026560_ovl7""\n" ".end""func_80026560_ovl7"":\n" "\t.size\t""func_80026560_ovl7"",.end""func_80026560_ovl7""-""func_80026560_ovl7" "\n" "\t.globl\t" "func_80026560_ovl7" ".NON_MATCHING\n" "\t" "func_80026560_ovl7" ".NON_MATCHING" " = " "func_80026560_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80026664_ovl7""\n" "\t.type ""func_80026664_ovl7"", @function\n" "\t.ent\t""func_80026664_ovl7""\n" "func_80026664_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80026664_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80026664_ovl7""\n" ".end""func_80026664_ovl7"":\n" "\t.size\t""func_80026664_ovl7"",.end""func_80026664_ovl7""-""func_80026664_ovl7" "\n" "\t.globl\t" "func_80026664_ovl7" ".NON_MATCHING\n" "\t" "func_80026664_ovl7" ".NON_MATCHING" " = " "func_80026664_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80026768_ovl7""\n" "\t.type ""func_80026768_ovl7"", @function\n" "\t.ent\t""func_80026768_ovl7""\n" "func_80026768_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80026768_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80026768_ovl7""\n" ".end""func_80026768_ovl7"":\n" "\t.size\t""func_80026768_ovl7"",.end""func_80026768_ovl7""-""func_80026768_ovl7" "\n" "\t.globl\t" "func_80026768_ovl7" ".NON_MATCHING\n" "\t" "func_80026768_ovl7" ".NON_MATCHING" " = " "func_80026768_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_800267DC_ovl7""\n" "\t.type ""func_800267DC_ovl7"", @function\n" "\t.ent\t""func_800267DC_ovl7""\n" "func_800267DC_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_800267DC_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_800267DC_ovl7""\n" ".end""func_800267DC_ovl7"":\n" "\t.size\t""func_800267DC_ovl7"",.end""func_800267DC_ovl7""-""func_800267DC_ovl7" "\n" "\t.globl\t" "func_800267DC_ovl7" ".NON_MATCHING\n" "\t" "func_800267DC_ovl7" ".NON_MATCHING" " = " "func_800267DC_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_8002691C_ovl7""\n" "\t.type ""func_8002691C_ovl7"", @function\n" "\t.ent\t""func_8002691C_ovl7""\n" "func_8002691C_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_8002691C_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_8002691C_ovl7""\n" ".end""func_8002691C_ovl7"":\n" "\t.size\t""func_8002691C_ovl7"",.end""func_8002691C_ovl7""-""func_8002691C_ovl7" "\n" "\t.globl\t" "func_8002691C_ovl7" ".NON_MATCHING\n" "\t" "func_8002691C_ovl7" ".NON_MATCHING" " = " "func_8002691C_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80026934_ovl7""\n" "\t.type ""func_80026934_ovl7"", @function\n" "\t.ent\t""func_80026934_ovl7""\n" "func_80026934_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80026934_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80026934_ovl7""\n" ".end""func_80026934_ovl7"":\n" "\t.size\t""func_80026934_ovl7"",.end""func_80026934_ovl7""-""func_80026934_ovl7" "\n" "\t.globl\t" "func_80026934_ovl7" ".NON_MATCHING\n" "\t" "func_80026934_ovl7" ".NON_MATCHING" " = " "func_80026934_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80026954_ovl7""\n" "\t.type ""func_80026954_ovl7"", @function\n" "\t.ent\t""func_80026954_ovl7""\n" "func_80026954_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80026954_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80026954_ovl7""\n" ".end""func_80026954_ovl7"":\n" "\t.size\t""func_80026954_ovl7"",.end""func_80026954_ovl7""-""func_80026954_ovl7" "\n" "\t.globl\t" "func_80026954_ovl7" ".NON_MATCHING\n" "\t" "func_80026954_ovl7" ".NON_MATCHING" " = " "func_80026954_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80026AA4_ovl7""\n" "\t.type ""func_80026AA4_ovl7"", @function\n" "\t.ent\t""func_80026AA4_ovl7""\n" "func_80026AA4_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80026AA4_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80026AA4_ovl7""\n" ".end""func_80026AA4_ovl7"":\n" "\t.size\t""func_80026AA4_ovl7"",.end""func_80026AA4_ovl7""-""func_80026AA4_ovl7" "\n" "\t.globl\t" "func_80026AA4_ovl7" ".NON_MATCHING\n" "\t" "func_80026AA4_ovl7" ".NON_MATCHING" " = " "func_80026AA4_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80026CA8_ovl7""\n" "\t.type ""func_80026CA8_ovl7"", @function\n" "\t.ent\t""func_80026CA8_ovl7""\n" "func_80026CA8_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80026CA8_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80026CA8_ovl7""\n" ".end""func_80026CA8_ovl7"":\n" "\t.size\t""func_80026CA8_ovl7"",.end""func_80026CA8_ovl7""-""func_80026CA8_ovl7" "\n" "\t.globl\t" "func_80026CA8_ovl7" ".NON_MATCHING\n" "\t" "func_80026CA8_ovl7" ".NON_MATCHING" " = " "func_80026CA8_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80026D30_ovl7""\n" "\t.type ""func_80026D30_ovl7"", @function\n" "\t.ent\t""func_80026D30_ovl7""\n" "func_80026D30_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80026D30_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80026D30_ovl7""\n" ".end""func_80026D30_ovl7"":\n" "\t.size\t""func_80026D30_ovl7"",.end""func_80026D30_ovl7""-""func_80026D30_ovl7" "\n" "\t.globl\t" "func_80026D30_ovl7" ".NON_MATCHING\n" "\t" "func_80026D30_ovl7" ".NON_MATCHING" " = " "func_80026D30_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80026F88_ovl7""\n" "\t.type ""func_80026F88_ovl7"", @function\n" "\t.ent\t""func_80026F88_ovl7""\n" "func_80026F88_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80026F88_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80026F88_ovl7""\n" ".end""func_80026F88_ovl7"":\n" "\t.size\t""func_80026F88_ovl7"",.end""func_80026F88_ovl7""-""func_80026F88_ovl7" "\n" "\t.globl\t" "func_80026F88_ovl7" ".NON_MATCHING\n" "\t" "func_80026F88_ovl7" ".NON_MATCHING" " = " "func_80026F88_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80027018_ovl7""\n" "\t.type ""func_80027018_ovl7"", @function\n" "\t.ent\t""func_80027018_ovl7""\n" "func_80027018_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80027018_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80027018_ovl7""\n" ".end""func_80027018_ovl7"":\n" "\t.size\t""func_80027018_ovl7"",.end""func_80027018_ovl7""-""func_80027018_ovl7" "\n" "\t.globl\t" "func_80027018_ovl7" ".NON_MATCHING\n" "\t" "func_80027018_ovl7" ".NON_MATCHING" " = " "func_80027018_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_800270A4_ovl7""\n" "\t.type ""func_800270A4_ovl7"", @function\n" "\t.ent\t""func_800270A4_ovl7""\n" "func_800270A4_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_800270A4_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_800270A4_ovl7""\n" ".end""func_800270A4_ovl7"":\n" "\t.size\t""func_800270A4_ovl7"",.end""func_800270A4_ovl7""-""func_800270A4_ovl7" "\n" "\t.globl\t" "func_800270A4_ovl7" ".NON_MATCHING\n" "\t" "func_800270A4_ovl7" ".NON_MATCHING" " = " "func_800270A4_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_800273F4_ovl7""\n" "\t.type ""func_800273F4_ovl7"", @function\n" "\t.ent\t""func_800273F4_ovl7""\n" "func_800273F4_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_800273F4_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_800273F4_ovl7""\n" ".end""func_800273F4_ovl7"":\n" "\t.size\t""func_800273F4_ovl7"",.end""func_800273F4_ovl7""-""func_800273F4_ovl7" "\n" "\t.globl\t" "func_800273F4_ovl7" ".NON_MATCHING\n" "\t" "func_800273F4_ovl7" ".NON_MATCHING" " = " "func_800273F4_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80027510_ovl7""\n" "\t.type ""func_80027510_ovl7"", @function\n" "\t.ent\t""func_80027510_ovl7""\n" "func_80027510_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80027510_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80027510_ovl7""\n" ".end""func_80027510_ovl7"":\n" "\t.size\t""func_80027510_ovl7"",.end""func_80027510_ovl7""-""func_80027510_ovl7" "\n" "\t.globl\t" "func_80027510_ovl7" ".NON_MATCHING\n" "\t" "func_80027510_ovl7" ".NON_MATCHING" " = " "func_80027510_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80027610_ovl7""\n" "\t.type ""func_80027610_ovl7"", @function\n" "\t.ent\t""func_80027610_ovl7""\n" "func_80027610_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80027610_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80027610_ovl7""\n" ".end""func_80027610_ovl7"":\n" "\t.size\t""func_80027610_ovl7"",.end""func_80027610_ovl7""-""func_80027610_ovl7" "\n" "\t.globl\t" "func_80027610_ovl7" ".NON_MATCHING\n" "\t" "func_80027610_ovl7" ".NON_MATCHING" " = " "func_80027610_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80027B90_ovl7""\n" "\t.type ""func_80027B90_ovl7"", @function\n" "\t.ent\t""func_80027B90_ovl7""\n" "func_80027B90_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80027B90_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80027B90_ovl7""\n" ".end""func_80027B90_ovl7"":\n" "\t.size\t""func_80027B90_ovl7"",.end""func_80027B90_ovl7""-""func_80027B90_ovl7" "\n" "\t.globl\t" "func_80027B90_ovl7" ".NON_MATCHING\n" "\t" "func_80027B90_ovl7" ".NON_MATCHING" " = " "func_80027B90_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80027FA8_ovl7""\n" "\t.type ""func_80027FA8_ovl7"", @function\n" "\t.ent\t""func_80027FA8_ovl7""\n" "func_80027FA8_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80027FA8_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80027FA8_ovl7""\n" ".end""func_80027FA8_ovl7"":\n" "\t.size\t""func_80027FA8_ovl7"",.end""func_80027FA8_ovl7""-""func_80027FA8_ovl7" "\n" "\t.globl\t" "func_80027FA8_ovl7" ".NON_MATCHING\n" "\t" "func_80027FA8_ovl7" ".NON_MATCHING" " = " "func_80027FA8_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80028024_ovl7""\n" "\t.type ""func_80028024_ovl7"", @function\n" "\t.ent\t""func_80028024_ovl7""\n" "func_80028024_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80028024_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80028024_ovl7""\n" ".end""func_80028024_ovl7"":\n" "\t.size\t""func_80028024_ovl7"",.end""func_80028024_ovl7""-""func_80028024_ovl7" "\n" "\t.globl\t" "func_80028024_ovl7" ".NON_MATCHING\n" "\t" "func_80028024_ovl7" ".NON_MATCHING" " = " "func_80028024_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80028084_ovl7""\n" "\t.type ""func_80028084_ovl7"", @function\n" "\t.ent\t""func_80028084_ovl7""\n" "func_80028084_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80028084_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80028084_ovl7""\n" ".end""func_80028084_ovl7"":\n" "\t.size\t""func_80028084_ovl7"",.end""func_80028084_ovl7""-""func_80028084_ovl7" "\n" "\t.globl\t" "func_80028084_ovl7" ".NON_MATCHING\n" "\t" "func_80028084_ovl7" ".NON_MATCHING" " = " "func_80028084_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_800287D0_ovl7""\n" "\t.type ""func_800287D0_ovl7"", @function\n" "\t.ent\t""func_800287D0_ovl7""\n" "func_800287D0_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_800287D0_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_800287D0_ovl7""\n" ".end""func_800287D0_ovl7"":\n" "\t.size\t""func_800287D0_ovl7"",.end""func_800287D0_ovl7""-""func_800287D0_ovl7" "\n" "\t.globl\t" "func_800287D0_ovl7" ".NON_MATCHING\n" "\t" "func_800287D0_ovl7" ".NON_MATCHING" " = " "func_800287D0_ovl7" "\n" );
void func_80028AFC_ovl7(void) {
}
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80028B04_ovl7""\n" "\t.type ""func_80028B04_ovl7"", @function\n" "\t.ent\t""func_80028B04_ovl7""\n" "func_80028B04_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80028B04_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80028B04_ovl7""\n" ".end""func_80028B04_ovl7"":\n" "\t.size\t""func_80028B04_ovl7"",.end""func_80028B04_ovl7""-""func_80028B04_ovl7" "\n" "\t.globl\t" "func_80028B04_ovl7" ".NON_MATCHING\n" "\t" "func_80028B04_ovl7" ".NON_MATCHING" " = " "func_80028B04_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80028C40_ovl7""\n" "\t.type ""func_80028C40_ovl7"", @function\n" "\t.ent\t""func_80028C40_ovl7""\n" "func_80028C40_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80028C40_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80028C40_ovl7""\n" ".end""func_80028C40_ovl7"":\n" "\t.size\t""func_80028C40_ovl7"",.end""func_80028C40_ovl7""-""func_80028C40_ovl7" "\n" "\t.globl\t" "func_80028C40_ovl7" ".NON_MATCHING\n" "\t" "func_80028C40_ovl7" ".NON_MATCHING" " = " "func_80028C40_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80028CE0_ovl7""\n" "\t.type ""func_80028CE0_ovl7"", @function\n" "\t.ent\t""func_80028CE0_ovl7""\n" "func_80028CE0_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80028CE0_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80028CE0_ovl7""\n" ".end""func_80028CE0_ovl7"":\n" "\t.size\t""func_80028CE0_ovl7"",.end""func_80028CE0_ovl7""-""func_80028CE0_ovl7" "\n" "\t.globl\t" "func_80028CE0_ovl7" ".NON_MATCHING\n" "\t" "func_80028CE0_ovl7" ".NON_MATCHING" " = " "func_80028CE0_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80028D88_ovl7""\n" "\t.type ""func_80028D88_ovl7"", @function\n" "\t.ent\t""func_80028D88_ovl7""\n" "func_80028D88_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80028D88_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80028D88_ovl7""\n" ".end""func_80028D88_ovl7"":\n" "\t.size\t""func_80028D88_ovl7"",.end""func_80028D88_ovl7""-""func_80028D88_ovl7" "\n" "\t.globl\t" "func_80028D88_ovl7" ".NON_MATCHING\n" "\t" "func_80028D88_ovl7" ".NON_MATCHING" " = " "func_80028D88_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80028DC8_ovl7""\n" "\t.type ""func_80028DC8_ovl7"", @function\n" "\t.ent\t""func_80028DC8_ovl7""\n" "func_80028DC8_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80028DC8_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80028DC8_ovl7""\n" ".end""func_80028DC8_ovl7"":\n" "\t.size\t""func_80028DC8_ovl7"",.end""func_80028DC8_ovl7""-""func_80028DC8_ovl7" "\n" "\t.globl\t" "func_80028DC8_ovl7" ".NON_MATCHING\n" "\t" "func_80028DC8_ovl7" ".NON_MATCHING" " = " "func_80028DC8_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80028EBC_ovl7""\n" "\t.type ""func_80028EBC_ovl7"", @function\n" "\t.ent\t""func_80028EBC_ovl7""\n" "func_80028EBC_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80028EBC_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80028EBC_ovl7""\n" ".end""func_80028EBC_ovl7"":\n" "\t.size\t""func_80028EBC_ovl7"",.end""func_80028EBC_ovl7""-""func_80028EBC_ovl7" "\n" "\t.globl\t" "func_80028EBC_ovl7" ".NON_MATCHING\n" "\t" "func_80028EBC_ovl7" ".NON_MATCHING" " = " "func_80028EBC_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80029034_ovl7""\n" "\t.type ""func_80029034_ovl7"", @function\n" "\t.ent\t""func_80029034_ovl7""\n" "func_80029034_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80029034_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80029034_ovl7""\n" ".end""func_80029034_ovl7"":\n" "\t.size\t""func_80029034_ovl7"",.end""func_80029034_ovl7""-""func_80029034_ovl7" "\n" "\t.globl\t" "func_80029034_ovl7" ".NON_MATCHING\n" "\t" "func_80029034_ovl7" ".NON_MATCHING" " = " "func_80029034_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80029170_ovl7""\n" "\t.type ""func_80029170_ovl7"", @function\n" "\t.ent\t""func_80029170_ovl7""\n" "func_80029170_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80029170_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80029170_ovl7""\n" ".end""func_80029170_ovl7"":\n" "\t.size\t""func_80029170_ovl7"",.end""func_80029170_ovl7""-""func_80029170_ovl7" "\n" "\t.globl\t" "func_80029170_ovl7" ".NON_MATCHING\n" "\t" "func_80029170_ovl7" ".NON_MATCHING" " = " "func_80029170_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80029314_ovl7""\n" "\t.type ""func_80029314_ovl7"", @function\n" "\t.ent\t""func_80029314_ovl7""\n" "func_80029314_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80029314_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80029314_ovl7""\n" ".end""func_80029314_ovl7"":\n" "\t.size\t""func_80029314_ovl7"",.end""func_80029314_ovl7""-""func_80029314_ovl7" "\n" "\t.globl\t" "func_80029314_ovl7" ".NON_MATCHING\n" "\t" "func_80029314_ovl7" ".NON_MATCHING" " = " "func_80029314_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_800294A4_ovl7""\n" "\t.type ""func_800294A4_ovl7"", @function\n" "\t.ent\t""func_800294A4_ovl7""\n" "func_800294A4_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_800294A4_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_800294A4_ovl7""\n" ".end""func_800294A4_ovl7"":\n" "\t.size\t""func_800294A4_ovl7"",.end""func_800294A4_ovl7""-""func_800294A4_ovl7" "\n" "\t.globl\t" "func_800294A4_ovl7" ".NON_MATCHING\n" "\t" "func_800294A4_ovl7" ".NON_MATCHING" " = " "func_800294A4_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80029698_ovl7""\n" "\t.type ""func_80029698_ovl7"", @function\n" "\t.ent\t""func_80029698_ovl7""\n" "func_80029698_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80029698_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80029698_ovl7""\n" ".end""func_80029698_ovl7"":\n" "\t.size\t""func_80029698_ovl7"",.end""func_80029698_ovl7""-""func_80029698_ovl7" "\n" "\t.globl\t" "func_80029698_ovl7" ".NON_MATCHING\n" "\t" "func_80029698_ovl7" ".NON_MATCHING" " = " "func_80029698_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80029B50_ovl7""\n" "\t.type ""func_80029B50_ovl7"", @function\n" "\t.ent\t""func_80029B50_ovl7""\n" "func_80029B50_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80029B50_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80029B50_ovl7""\n" ".end""func_80029B50_ovl7"":\n" "\t.size\t""func_80029B50_ovl7"",.end""func_80029B50_ovl7""-""func_80029B50_ovl7" "\n" "\t.globl\t" "func_80029B50_ovl7" ".NON_MATCHING\n" "\t" "func_80029B50_ovl7" ".NON_MATCHING" " = " "func_80029B50_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80029D34_ovl7""\n" "\t.type ""func_80029D34_ovl7"", @function\n" "\t.ent\t""func_80029D34_ovl7""\n" "func_80029D34_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80029D34_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80029D34_ovl7""\n" ".end""func_80029D34_ovl7"":\n" "\t.size\t""func_80029D34_ovl7"",.end""func_80029D34_ovl7""-""func_80029D34_ovl7" "\n" "\t.globl\t" "func_80029D34_ovl7" ".NON_MATCHING\n" "\t" "func_80029D34_ovl7" ".NON_MATCHING" " = " "func_80029D34_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_80029EBC_ovl7""\n" "\t.type ""func_80029EBC_ovl7"", @function\n" "\t.ent\t""func_80029EBC_ovl7""\n" "func_80029EBC_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_80029EBC_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_80029EBC_ovl7""\n" ".end""func_80029EBC_ovl7"":\n" "\t.size\t""func_80029EBC_ovl7"",.end""func_80029EBC_ovl7""-""func_80029EBC_ovl7" "\n" "\t.globl\t" "func_80029EBC_ovl7" ".NON_MATCHING\n" "\t" "func_80029EBC_ovl7" ".NON_MATCHING" " = " "func_80029EBC_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_8002A0F4_ovl7""\n" "\t.type ""func_8002A0F4_ovl7"", @function\n" "\t.ent\t""func_8002A0F4_ovl7""\n" "func_8002A0F4_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_8002A0F4_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_8002A0F4_ovl7""\n" ".end""func_8002A0F4_ovl7"":\n" "\t.size\t""func_8002A0F4_ovl7"",.end""func_8002A0F4_ovl7""-""func_8002A0F4_ovl7" "\n" "\t.globl\t" "func_8002A0F4_ovl7" ".NON_MATCHING\n" "\t" "func_8002A0F4_ovl7" ".NON_MATCHING" " = " "func_8002A0F4_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_8002A1C0_ovl7""\n" "\t.type ""func_8002A1C0_ovl7"", @function\n" "\t.ent\t""func_8002A1C0_ovl7""\n" "func_8002A1C0_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_8002A1C0_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_8002A1C0_ovl7""\n" ".end""func_8002A1C0_ovl7"":\n" "\t.size\t""func_8002A1C0_ovl7"",.end""func_8002A1C0_ovl7""-""func_8002A1C0_ovl7" "\n" "\t.globl\t" "func_8002A1C0_ovl7" ".NON_MATCHING\n" "\t" "func_8002A1C0_ovl7" ".NON_MATCHING" " = " "func_8002A1C0_ovl7" "\n" );
__asm__( ".section .text\n" "\t.set noat\n" "\t.set noreorder\n" "\t.align\t2\n" "\t.globl\t""func_8002A2F8_ovl7""\n" "\t.type ""func_8002A2F8_ovl7"", @function\n" "\t.ent\t""func_8002A2F8_ovl7""\n" "func_8002A2F8_ovl7" ":\n" "\t.include \"""asm/nonmatchings/ovl7/code_175860""/""func_8002A2F8_ovl7"".s\"\n" "\t.set reorder\n" "\t.set at\n" "\t.end\t""func_8002A2F8_ovl7""\n" ".end""func_8002A2F8_ovl7"":\n" "\t.size\t""func_8002A2F8_ovl7"",.end""func_8002A2F8_ovl7""-""func_8002A2F8_ovl7" "\n" "\t.globl\t" "func_8002A2F8_ovl7" ".NON_MATCHING\n" "\t" "func_8002A2F8_ovl7" ".NON_MATCHING" " = " "func_8002A2F8_ovl7" "\n" );
