#include <string>

// ----------------------------------------------------------------------------

namespace MinExample
{

// ----------------------------------------------------------------------------
  
class IHardware {
public:
  virtual const char *getBrand() const = 0;
};

class MaschineController : public IHardware { 
public:
  const char *getBrand() const override;
};

class TraktorKontrol : public IHardware { 
public:
  const char *getBrand() const override;
};

// ----------------------------------------------------------------------------
  
class IFactory 
{
public:
  virtual IHardware *createHardware() const = 0;
};

class MaschineFactory : public IFactory
{
public:
  MaschineController *createHardware() const override;
};

class TraktorFactory : public IFactory
{
public:
  TraktorKontrol *createHardware() const override;
};

// ----------------------------------------------------------------------------

}
